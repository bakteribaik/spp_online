import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spp_online/Screen/Login%20Screen/LoginPages.dart';

import '../../Screen/Home Screen/HomeScreen.dart';

class Routers extends StatefulWidget {
  const Routers({Key? key}) : super(key: key);

  @override
  State<Routers> createState() => _RoutersState();
}

class _RoutersState extends State<Routers> {

  Future<void> _checkSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isLogin = prefs.getBool('login');
  }

  @override
  Future<void> initState() async {
    // TODO: implement initState
    super.initState();
    _checkSession();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Loading..'),
      ),
    );
  }
}