import 'package:flutter/material.dart';
import 'package:myapp/config/themes/utility.dart';
import 'package:myapp/presentation/screens/screens.dart';

void main() {
  runApp(MyMainApp());
}

// ignore: use_key_in_widget_constructors
class MyMainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Utility.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_appPage',
      routes: {
        '/home_appPage': (_) => HomeApp(),
        '/product_listPage': (_) => ProductListPage(),
        '/new_productPage': (_) => NewProductPage(),
        '/not_foundPage': (_) => NotFoundPage(),
        '/settingsPage': (_) => SettingsPage(),
      },
    );
  }
}
