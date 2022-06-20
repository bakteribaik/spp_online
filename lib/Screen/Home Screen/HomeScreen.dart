import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spp_online/Screen/Keuangan%20Screen/KeuanganScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late DrawerController drawerController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(   
        backgroundColor: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(left: 10, right: 10), 
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      enableFeedback: false,
                      minLeadingWidth: 10,              
                      onTap: (){

                      },
                      leading: CircleAvatar(backgroundColor: Colors.lightBlue[50]),
                      title: Text('Zulfikar Alwi', style: TextStyle(color: Colors.grey, fontSize: 18),),
                      subtitle: Text('NISN: 123123', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    ),

                    Divider(),
                    
                    ListTile(
                      enableFeedback: false,
                      minLeadingWidth: 10,
                      dense: true,
                      onTap: (){

                      },
                      leading: Icon(Icons.account_circle_outlined),
                      title: Text('Profile', style: TextStyle(color: Colors.grey[200]),),
                    ),
                    ListTile(
                      enableFeedback: false,
                      minLeadingWidth: 10,
                      dense: true,
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Keuangan()));
                      },
                      leading: Icon(Icons.payment),
                      title: Text('Keuangan', style: TextStyle(color: Colors.grey),),
                    ),
                    ListTile(
                      minLeadingWidth: 10,
                      dense: true,
                      onTap: (){
                        
                      },
                      leading: Icon(Icons.calendar_month),
                      title: Text('Jadwal', style: TextStyle(color: Colors.grey[200]),),
                    ),
                    ListTile(
                      minLeadingWidth: 10,
                      dense: true,
                      onTap: (){
                        
                      },
                      leading: Icon(Icons.receipt_long),
                      title: Text('Nilai Akademik', style: TextStyle(color: Colors.grey[200]),),
                    ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: Text('Homescreen'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            SharedPreferences pref = await SharedPreferences.getInstance();
            await pref.remove('login');
            SystemNavigator.pop();
          },
          child: Text('Logout'),
        ),
      ),
    );
  }
}