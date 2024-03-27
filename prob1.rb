require 'httparty'
require 'json'

  username = "YahiaNahhas"
  url = "https://api.github.com/users/#{username}/repos"
  response = HTTParty.get(url)
  source = JSON.parse(response.body)

  most_starred = source.max_by { |repo| repo['stargazers_count'] }

  puts "Most Starred Repository:"
  puts "Name: #{most_starred['name']}"
  puts "Description: #{most_starred['description']}"
  puts "Stars: #{most_starred['stargazers_count']}"
  puts "URL: #{most_starred['html_url']}"
