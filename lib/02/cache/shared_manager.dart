

import 'package:flutter_ilk_deneme/02/cache/shared_not_initiazle.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum SharedKey{
  counter
}


class SharedManager {

  SharedPreferences? preferences;

  SharedManager(){
    init();
  }

  Future<void> init() async{
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPrefences() {
    if (preferences == null) {
      throw SharedNotInitiazleException();
    }
  }


  Future<void> saveString(SharedKey key, String value) async{
    _checkPrefences();
    await preferences?.setString(key.name, value);
  }

  String? getString(SharedKey key){
    _checkPrefences();
    return preferences?.getString(key.name);
  }

  Future<bool> removeItem(SharedKey key) async{
    _checkPrefences();
    return (await preferences?.remove(key.name)) ?? false;
  }

}