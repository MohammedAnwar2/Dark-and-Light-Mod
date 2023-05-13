import 'package:features1/Bindings.dart';
import 'package:features1/home.dart';
import 'package:features1/services.dart';
import 'package:features1/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await initalization();
  return runApp( MyApp());
}

Future initalization ()async{
  await Get.putAsync(() => SettingServices().init());
}
class MyApp extends StatelessWidget {
//don't use GerView in GetMaterialApp
   MyApp({Key? key}) : super(key: key);
  SettingServices controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: controller.sharepref?.getBool("Mode")==null || controller.sharepref?.getBool("Mode") ==false  ? Theam().LightMode : Theam().DarkMode,
        initialBinding: MyBindings(),
        getPages: [
          GetPage(name: "/",page: () => Home())
      ],
    );
  }
}


