import 'package:flutter/material.dart';
import 'package:foodle_app/modules/common/access/access_binding.dart';
import 'package:foodle_app/routes/app_pages.dart';
import 'package:get/route_manager.dart';

import 'modules/common/access/access_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: const AccessPage(),
      initialBinding: AccessBinding(),
      getPages: AppPages.pages,
    );
  }
}
