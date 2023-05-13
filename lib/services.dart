import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingServices extends GetxService
{
  SharedPreferences ?sharepref;
  Future<SettingServices> init()async{
    sharepref = await SharedPreferences.getInstance();
    return this;
  }
}
