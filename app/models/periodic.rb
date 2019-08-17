class Periodic < ApplicationRecord
  require 'csv'
  require 'activerecord-import/base'
  require 'activerecord-import/active_record/adapters/postgresql_adapter'
  require 'pry'

  belongs_to :user, optional: true


  def self.convert_to_utf8_encoding(original_file)  
    original_string = original_file.read
    final_string = original_string.encode(invalid: :replace, undef: :replace, replace: '') #If you'd rather invalid characters be replaced with something else, do so here.
    final_file = Tempfile.new('import') #No need to save a real File
    final_file.write(final_string)
    final_file.close #Don't forget me
    final_file
  end 

  def self.import! 
    the_file = convert_to_utf8_encoding(File.open('db/periodics_capes_2016.csv'))
    CSV.foreach(Rails.root.join(the_file), col_sep: ';', headers: true) do |row|
      Periodic.create! row.to_hash.slice('issn', 'name', 'knowledgement_area', 'qualis')
      print '.'.green
    end
  end
end

# https://cbabhusal.wordpress.com/2017/02/09/rails-import-csv-data-to-database/ import csv to postgresql from ruby