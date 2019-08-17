# lib/tasks/load_periodics_capes.rake
desc 'Loads data from db/periodics_capes_2016.csv file to periodics table'
task :load_periodics_data => :environment do
  MyLogger.log('Starting to load the periodics data from db/periodics_capes_2016.csv ...')
  
  Periodic.import!

  MyLogger.log('Done loading the periodics data from db/periodics_capes_2016.csv!')
end