require 'bibtex'

class PagesController < ApplicationController
  def info
  end

  def upload_bibtex
    if params[:bibtex_file]
      ct_refs = 0
      b = BibTeX.open params[:bibtex_file].tempfile.open
      b.each do | reference |
        reference_params = { title: reference.title, authors: reference.author, description: 'Uploaded from BibTeX file', publication_date: "#{reference.year}-01-01" }
        @reference = Reference.new(reference_params)
        @reference.user = current_user
        @reference.registered_date = Date.today()
        ct_refs+=1 if @reference.save
      end
      respond_to do |format|
        if b.size == ct_refs
          format.html { redirect_to pages_upload_bibtex_path, notice: 'Referências importadas com sucesso.' }
        else
          format.html { redirect_to pages_upload_bibtex_path, notice: 'Falha ao importar algumas das referências do arquivo.' }
        end
      end
    end
  end

  private

    def page_params
      params.permit(:bibtex_file)
    end
end
