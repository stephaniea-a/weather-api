# weather-api

# Weather API testing

## Objective

To write respec tests for the current weather API. This API allows access to current weather data for any location including over 200,000 cities.
https://openweathermap.org/current 

## Methods written

As an API key is needed to make API calls an account was made

Examples of methods below

    def get_by_city_name(city_name)
        self.class.get("q=#{city_name}&appid=#{@api_key}")
      end
      
## Rspec testing

Rspec tests were set up to test the data pulled form the api

    it "should have a key equal to lon for longitude" do
          expect(@city_name_result["coord"].keys[0]).to eq("lon")
        end
