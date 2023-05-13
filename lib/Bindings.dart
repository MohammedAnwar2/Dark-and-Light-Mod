import 'package:features1/controller.dart';
import 'package:features1/services.dart';
import 'package:get/get.dart';

class MyBindings extends Bindings
{
  @override
  void dependencies() {
    Get.put(mycontroller());
    Get.put(SettingServices());
  }

}
