require 'httparty'
area = "Europe"
location = "London"

response = HTTParty.get("http://worldtimeapi.org/api/timezone/#{area}/#{location}")
source = JSON.parse(response.body)

current_time = source['datetime']

puts "Current Time in #{area}/#{location}: #{current_time}"
