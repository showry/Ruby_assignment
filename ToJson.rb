require 'json'
require 'csv'

read_data   = CSV.table('input.csv')
converted_data = read_data.map { |row| row.to_hash }

File.open('output.json', 'w') do |file|
  file.puts JSON.pretty_generate(converted_data)
end
