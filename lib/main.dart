import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spp_online/Screen/Home%20Screen/HomeScreen.dart';
import 'package:spp_online/Screen/Login%20Screen/LoginPages.dart';
import 'package:spp_online/Services/Routers/Router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var isLogin = prefs.getBool('login');

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLogin == true ? HomeScreen() : LoginPages(),
    )
  );
}