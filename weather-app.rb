require "yahoo_weatherman"

def your_location(location)

puts "Please enter your zip code:"
@location = gets.chomp
end

def weather_forecast(location)

client = weatherman::client.new
weather = client.lookup_by_location(location)
forecast = weather.forecasts

forecast.each do |day|

case day
when 0
 f_date = "today"
when 1	
 f_date = "tomorrow"
else
 f_date = forecast[day]["day"]
end

f_location = forecast[day]["city"]
f_text = forecast[day]["text"]
f_low = forecast[day]["low"]
f_high = forecast[day]["high"]

puts "The weather forecast for #{f_date} is #{f_text.downcase}, with a low of #{f_low} and a high of #{f_high}."

end

end

your_location(@location)
weather_forecast(@location)







