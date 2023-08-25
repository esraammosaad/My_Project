class WeatherModel{
  String? cityName;
  String? date;
  double? avgtemp;
  double? maxtemp;
  double? mintemp;
  String? icon;
  String? state;

  WeatherModel(
      {
        required this.cityName,
        required this.date,
        required this.avgtemp,
        required this.maxtemp,
        required this.mintemp,
        required this.icon,
        required this.state,
      });

  WeatherModel.FromJson(dynamic data){
    var dataJson=data['forecast']['forecastday'][0];
    cityName=data['location']['name'];
    date = data['location']['localtime'];
    avgtemp = dataJson['day']['avgtemp_c'];
    maxtemp=dataJson['day']['maxtemp_c'];
    mintemp=dataJson['day']['mintemp_c'];
    icon = dataJson['day']['condition']['icon'];
    state = dataJson['day']['condition']['text'];
  }
}