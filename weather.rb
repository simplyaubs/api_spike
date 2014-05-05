require 'faraday'
require 'json'

response = Faraday.get('http://api.openweathermap.org/data/2.5/weather?q=Atlanta,ga')

json_string = response.body

puts JSON.parse(json_string)['weather']




boulder_7_day = Faraday.get('http://api.openweathermap.org/data/2.5/forecast/daily?q=Atlanta,ga&units=imperial&cnt=7')

json_output = boulder_7_day.body

puts JSON.parse(json_output)['weather']




