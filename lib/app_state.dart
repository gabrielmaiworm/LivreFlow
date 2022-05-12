import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _foto1 = prefs.getString('ff_foto1') ?? _foto1;
    _foto2 = prefs.getString('ff_foto2') ?? _foto2;
    _foto = prefs.getString('ff_foto') ?? _foto;
  }

  SharedPreferences prefs;

  String _foto1;
  String get foto1 => _foto1;
  set foto1(String _value) {
    _foto1 = _value;
    prefs.setString('ff_foto1', _value);
  }

  String _foto2;
  String get foto2 => _foto2;
  set foto2(String _value) {
    _foto2 = _value;
    prefs.setString('ff_foto2', _value);
  }

  String _foto;
  String get foto => _foto;
  set foto(String _value) {
    _foto = _value;
    prefs.setString('ff_foto', _value);
  }
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
