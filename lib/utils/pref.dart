import 'package:shared_preferences/shared_preferences.dart';


addStringToSF(String name,String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(name, value);

}



getStringValuesSF(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Return String
  String stringValue = prefs.getString('email') ?? "0";
  return stringValue;
}

removeValuesSF(String name) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //Remove String
  prefs.remove(name);

}

clearAllData() async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  await preferences.clear();
}