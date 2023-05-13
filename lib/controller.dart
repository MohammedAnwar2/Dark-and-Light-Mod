import 'package:features1/services.dart';
import 'package:get/get.dart';
SettingServices controller = Get.put(SettingServices());
class mycontroller extends GetxController
{
  bool? darkMode=controller.sharepref!.getBool("Mode")??false;
  check(){
    darkMode=controller.sharepref!.getBool("Mode");
    update();
  }
}