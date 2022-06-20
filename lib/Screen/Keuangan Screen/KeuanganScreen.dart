import 'package:flutter/material.dart';

class Keuangan extends StatefulWidget {
  const Keuangan({Key? key}) : super(key: key);

  @override
  State<Keuangan> createState() => _KeuanganState();
}

class _KeuanganState extends State<Keuangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Data tagihan semester', style: TextStyle(color: Colors.grey, fontSize: 15),),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Center(
          child: Expanded(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Biaya Registrasi', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey,)),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                            decoration: BoxDecoration(                   
                              border: Border.all(width: 1, color: Colors.green),
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Text('Sudah lunas', style: TextStyle(fontSize: 10, color: Colors.green),),
                          )
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 10,),
                      Text('No. Tagihan: 20221020508034', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      SizedBox(height: 5,),
                      Text('Rp.300.000', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[400], fontSize: 14)),
                      // Container(
                      //   alignment: Alignment.centerRight,
                      //   width: MediaQuery.of(context).size.width,
                      //   child: TextButton(                  
                      //     onPressed: (){},
                      //     child: Text('Bayar'),
                      //   ),
                      // ),
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Angsuran ke-1', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey,)),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 2),
                            decoration: BoxDecoration(                   
                              border: Border.all(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Text('belum lunas', style: TextStyle(fontSize: 10, color: Colors.red),),
                          )
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 10,),
                      Text('No. Tagihan: 20221020508035', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      SizedBox(height: 5,),
                      Text('Rp.300.000', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[400], fontSize: 14)),
                      Container(
                        alignment: Alignment.centerRight,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                          onPressed: (){},
                          child: Text('Bayar'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}