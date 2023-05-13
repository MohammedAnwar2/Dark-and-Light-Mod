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
                return i.darkMode!?Text("Dark Mode"):Text("Light Mode");
              })
      ),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                Get.changeTheme(Theam().LightMode);
                controller.sharepref?.setBool("Mode", false);
                control.check();
                print("======LightMode=======> ${controller.sharepref?.getBool("Mode")}");
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: Text(
                  "Light Mode",
                  style: GoogleFonts.asap(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Get.changeTheme(Theam().DarkMode);
                controller.sharepref?.setBool("Mode", true);
                 control.check();
                print("======DarkMod=======> ${controller.sharepref?.getBool("Mode")}");
              },
              child: Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.amberAccent,
                child: Text(
                  "Dark Mode",
                  style: GoogleFonts.asap(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
