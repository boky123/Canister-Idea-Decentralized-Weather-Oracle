// WeatherOracle.mo

module WeatherOracle {
  // Define a simple weather data struct
  type WeatherData = {
    temperature : Float;
    humidity : Float;
    windSpeed : Float;
    precipitation : Float;
  };

  // Define a weather oracle actor
  actor class WeatherOracleActor() {
    var latestData : WeatherData = {
      temperature = 0.0;
      humidity = 0.0;
      windSpeed = 0.0;
      precipitation = 0.0;
    };

    // Update weather data
    public func updateData(temperature : Float, humidity : Float, windSpeed : Float, precipitation : Float) : async () {
      latestData = {
        temperature = temperature;
        humidity = humidity;
        windSpeed = windSpeed;
        precipitation = precipitation;
      };
    };

    // Get the latest weather data
    public func getData() : async WeatherData {
      return latestData;
    };
  };

  // Create a new weather oracle actor instance
  public func createWeatherOracleActor() : async WeatherOracleActor {
    return WeatherOracleActor();
  };
};
