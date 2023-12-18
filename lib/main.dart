
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/modules/create_account/create_account_view.dart';
import 'package:test2/modules/login/login_view.dart';

import 'modules/home/home_view.dart';


void main() {
  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/account',
            getPages: [
              GetPage(name: '/home', page: () => Home()),
              GetPage(name: '/login', page:() => Login()),
              GetPage(name: '/account', page: () => Account()),

            ],
            builder: EasyLoading.init(),
          );
        }),
  );
}

