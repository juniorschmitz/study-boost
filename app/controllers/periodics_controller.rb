class PeriodicsController < ApplicationController
  before_action :set_periodic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:show, :index]

  # GET /periodics
  # GET /periodics.json
  def index
    @periodics = Periodic.all
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
      params.require(:periodic).permit(:name, :description, :qualis, :knowledgement_area)
    end
end
