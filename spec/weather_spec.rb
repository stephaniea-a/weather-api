require "spec_helper"

describe WeatherApi do

	before(:all) do
		@weather_api = WeatherApi.new
	end

	context "testing api called by city name" do

		before(:all) do
			@city_name_result = @weather_api.get_by_city_name("london")
		end

		it "weather_api should be a class" do
			expect(WeatherApi).to be_a(Class)
		end

		it "should be an instance of the WeatherAPI class" do
			expect(@weather_api).to be_instance_of(WeatherApi)
		end

		it "should return information and not be empty" do
			expect(@city_name_result).not_to be_empty
		end

		it "should return a hash of results" do
			expect(@city_name_result["coord"]).to be_kind_of(Hash)
		end

		it "coord hash should have string values for keys latitude and longitude" do
			@city_name_result["coord"].each do |k,v|
				expect(k.class).to be(String)
			end
		end

		it "coord hash should have float value for latitude and longitude" do
			@city_name_result["coord"].each do |k,v|
				expect(v.class).to be(Float)
			end
		end

		it "should have keys which are strings" do
			@city_name_result.each do |k,v|
				expect(k.class).to be(String)
			end
		end

		it "should have a key equal to lon for longitude" do
			expect(@city_name_result["coord"].keys[0]).to eq("lon")
		end

		it "should have a key equal to lat for latitude" do
			expect(@city_name_result["coord"].keys[1]).to eq("lat")
		end



	end


end