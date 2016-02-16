require 'json'
require 'csv'

extracted_data   = CSV.table('simpleCSV.csv')
transformed_data = extracted_data.map { |row| row.to_hash }

File.open('jsonfile.json', 'w') do |file|
  file.puts JSON.pretty_generate(transformed_data)
end
