class PeriodicsController < ApplicationController
  before_action :set_periodic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index]

  # GET /periodics
  # GET /periodics.json
  def index
    @all_knowledgement_areas = Periodic.distinct.pluck(:knowledgement_area).compact.each(&:strip!)
    @all_qualis = Periodic.distinct.pluck(:qualis).compact.each(&:strip!)
    @periodics_count = Periodic.all.count

    if params[:selected_knowledgement_area] && params[:selected_qualis]
      @listage_title = 'Listagem de periódicos pesquisados'
      @periodics = find_periodic(params[:selected_knowledgement_area], params[:selected_qualis]).paginate(page: params[:page], per_page: 80).order('created_at ASC')
      @returned_results_txt = "Total de Periódicos retornados na consulta: #{@periodics.size}"
    else
      @listage_title = 'Listagem de todos os periódicos'
      @returned_results_txt = "Você ainda não realizou uma filtragem na busca"
      @periodics = Periodic.paginate(page: params[:page], per_page: 39).order('created_at ASC')
      respond_to do |format|
        format.html
        format.js
      end
    end
  end

  def find_periodic(knowledgement_area, qualis)
    str = ''
    str_kn = ''

    qualis.each { |q| str += "'#{q.to_s}', "}
    str = str.delete_suffix!(', ')

    knowledgement_area.each { |k| str_kn += "'#{k.to_s}', "}
    str_kn = str_kn.delete_suffix!(', ')
    @found = Periodic.where("qualis IN (#{str}) AND knowledgement_area IN (#{str_kn})")
    @found
  end

  # GET /periodics/1
  # GET /periodics/1.json
  def show
  end

  # GET /periodics/new
  def new
    @periodic = Periodic.new
  end

  # GET /periodics/1/edit
  def edit
  end

  # POST /periodics
  # POST /periodics.json
  def create
    @periodic = Periodic.new(periodic_params)
    @periodic.user = current_user

    respond_to do |format|
      if @periodic.save
        format.html { redirect_to @periodic, notice: 'Periódico registrado com sucesso.' }
        format.json { render :show, status: :created, location: @periodic }
      else
        format.html { render :new }
        format.json { render json: @periodic.errors, status: :unprocessable_entity }
      end
    end
  end

  def create!
    @periodic = Periodic.new(periodic_params)

    respond_to do |format|
      if @periodic.save
        format.html { redirect_to @periodic, notice: 'Periódico registrado com sucesso.' }
        format.json { render :show, status: :created, location: @periodic }
      else
        format.html { render :new }
        format.json { render json: @periodic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periodics/1
  # PATCH/PUT /periodics/1.json
  def update
    respond_to do |format|
      if @periodic.update(periodic_params)
        format.html { redirect_to @periodic, notice: 'Periódico atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @periodic }
      else
        format.html { render :edit }
        format.json { render json: @periodic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodics/1
  # DELETE /periodics/1.json
  def destroy
    @periodic.destroy
    respond_to do |format|
      format.html { redirect_to periodics_url, notice: 'Periódico excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periodic
      @periodic = Periodic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def periodic_params
      params.require(:periodic).permit(:name, :description, :qualis, :knowledgement_area, :issn, :selected_knowledgement_area, :selected_qualis)
    end
end
