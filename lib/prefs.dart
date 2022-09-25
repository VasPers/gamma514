import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ucheba/metrodata.dart';

const futureSharedPreference = 'future shared preference';
 class SharedPref {


static  Future setMap() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(futureSharedPreference, jsonEncode(favouriteData));
  }
 static Future<Map> getMap() async{
    final prefs = await SharedPreferences.getInstance();
    return jsonDecode(prefs.getString(futureSharedPreference) ?? '') ?? {};
  }
}
