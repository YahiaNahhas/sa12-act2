require 'httparty'
area = "Europe"
location = "London"

response = HTTParty.get("http://worldtimeapi.org/api/timezone/#{area}/#{location}")
source = JSON.parse(response.body)

current_time = Time.parse(source["datetime"]).strftime("%Y-%m-%d %H:%M:%S")

puts "Current Time in #{area}/#{location}: #{current_time}"
