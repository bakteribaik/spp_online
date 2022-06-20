import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spp_online/Screen/Home%20Screen/HomeScreen.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {

  TextEditingController nisnC = TextEditingController();
  TextEditingController passC = TextEditingController();

  bool valid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('PANEL SEKOLAH', style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold, fontSize: 23),),
                  SizedBox(height: 30,),

                  valid?
                    Container(margin: EdgeInsets.only(bottom: 10),child: Text('nisn/password salah!', style: TextStyle(color: Colors.red[200]),))
                  : SizedBox(),

                  Container(
                    width: 250,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      controller: nisnC,
                      style: TextStyle(color: Colors.grey[500]),
                      decoration: InputDecoration(
                        hintText: 'NISN',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey[300])
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                    width: 250,
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      controller: passC,
                      style: TextStyle(color: Colors.grey[500]),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey[300])
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                  GestureDetector(
                    onTap: () async {
                      if (nisnC.text == '123123' && passC.text == '123') {
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setBool('login', true);
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                      }else{
                        setState(() {
                          valid = true;
                        });
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[300],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text('Masuk', style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}