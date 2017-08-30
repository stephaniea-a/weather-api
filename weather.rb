require "json"
require "httparty"

class WeatherApi
	include HTTParty

	base_uri 'api.openweathermap.org/data/2.5/weather?'

	def initialize
		@api_key = "1d119fb4ac2259a47c9fbef081f56eec"
	end

	def get_by_city_name(city_name)
		self.class.get("q=#{city_name}&appid=#{@api_key}")
	end

	def get_by_city_name_and_county_code(city_name, country_code="")
		self.class.get("q=#{city_name},#{country_code}&appid=#{@api_key}")
	end

	def get_by_city_id(city_id)
		self.class.get("id=#{city_id}&appid=#{@api_key}")
	end

	def get_by_lat_and_lon(latitude, longitude)
		self.class.get("lat=#{latitude}&lon=#{longitude}&appid=#{@api_key}")
	end


end

api = WeatherApi.new
# puts api.get_by_city_name("london")
# puts api.get_by_city_name_and_county_code("london")
# puts api.get_by_city_id("2172797")
puts api.get_by_lat_and_lon("35", "135")
