import 'package:features1/controller.dart';
import 'package:features1/services.dart';
import 'package:features1/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  SettingServices controller = Get.find();
  mycontroller control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: GetBuilder<mycontroller>(
              init: mycontroller(),
              builder: (i) {
                return i.darkMode! ? Text(
                  "Dark Mode", style: DarkText(context),) : Text(
                  "Light Mode", style: LightText(context),);
              })),
      body: Container(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                Get.changeTheme(Theam().LightMode);
                controller.sharepref?.setBool("Mode", false);
                control.check();
                print(
                    "======LightMode=======> ${controller.sharepref?.getBool(
                        "Mode")}");
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 100,
                color: Colors.blueAccent,
                child: GetBuilder<mycontroller>(builder: (logic) {
                  return Text(
                    "Light Mode",
                    style: LightText(context),
                  );
                }),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.changeTheme(Theam().DarkMode);
                controller.sharepref?.setBool("Mode", true);
                control.check();
                print(
                    "======DarkMod=======> ${controller.sharepref?.getBool(
                        "Mode")}");
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 100,
                color: Colors.amberAccent,
                child: GetBuilder<mycontroller>(builder: (i) {
                  return Text(
                    "Dark Mode",
                    style:DarkText(context)
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
