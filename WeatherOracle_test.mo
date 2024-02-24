// WeatherOracle_test.mo

import WeatherOracle "WeatherOracle";

actor {
  public shared(msg) func testWeatherOracle() : async () {
    // Create a new WeatherOracleActor instance
    let oracle = await WeatherOracle.createWeatherOracleActor();

    // Test updateData function
    let _ = await oracle.updateData(temperature = 25.0, humidity = 50.0, windSpeed = 10.0, precipitation = 0.0);
    let data = await oracle.getData();
    assert (data.temperature == 25.0);
    assert (data.humidity == 50.0);
    assert (data.windSpeed == 10.0);
    assert (data.precipitation == 0.0);
  };
};
