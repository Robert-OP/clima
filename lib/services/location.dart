import 'package:geolocator/geolocator.dart';

class Location {
  double latitude, longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
//      print('$latitude, $longitude');
    } catch (e) {
      print(e);
    }
  }
}
