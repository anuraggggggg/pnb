import 'package:flutter/material.dart';
import 'package:pnb/view/login.dart';
import 'package:pnb/view/sendmoney.dart';
import 'package:pnb/view/settings.dart';

import '../modal/Base.dart';
import 'addbeneficiary.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  List <Base> ofServices= [
    Base(Image: "sendmoney", Title: "Send Money"),
    Base(Image: "bill", Title: "Bill Pays"),
    Base(Image: "beneficiary", Title: "Add Beneficiary"),
    Base(Image: "padlock", Title: "Change Password"),
    Base(Image: "ewallet", Title: "E- Wallet"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        surfaceTintColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue.shade900
              ),
                child: Row(
                  children: [
                    CircleAvatar(

                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("anurag@gmail.com", style: TextStyle(
                      color: Colors.white
                    ),),

                  ],
                )),
            SizedBox(
              height: 10,
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                },
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(width: 30,),
                    Text("Settings"),


                  ],

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 30,),
                    Text("Logout"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Dashboard", style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,

      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              height: 80,
                child: Image(image: AssetImage("assets/iconb.png"))),
          ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width*0.4,
                decoration: BoxDecoration(
                  color: Color(0xFFE3F2FD),
                  borderRadius: BorderRadius.circular(20)

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap : (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sendmoney()),);
                      },
                      child: Container(
                        height: 40,
                          child: Image(image: AssetImage("assets/sendmoney.png"))),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Text("Send Money", style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 18

                    ),)
                  ],
                ),
              ),
              // SizedBox(
              //   width: 70,
              // ),
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width*0.4,
                decoration: BoxDecoration(
                    color: Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(20)

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 40,
                        child: Image(image: AssetImage("assets/bill.png"))),
                    SizedBox(
                      height: 10,
                    ),

                    Text("Bills Pay", style: TextStyle(
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold,
                        fontSize: 18

                    ),)
                  ],
                ),
              ),
            ],
          ),
        ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                GestureDetector(
                  onTap : (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Addbeneficiary()));
                  },
                  child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        color: Color(0xFFE3F2FD),
                        borderRadius: BorderRadius.circular(20)

                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 40,
                            child: Image(image: AssetImage("assets/beneficiary.png"))),
                        SizedBox(
                          height: 10,
                        ),

                        Text("Add Beneficiary", style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: 18

                        ),)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: MediaQuery.of(context).size.width*0.4,
                  decoration: BoxDecoration(
                      color: Color(0xFFE3F2FD),
                      borderRadius: BorderRadius.circular(20)

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 40,
                          child: Image(image: AssetImage("assets/padlock.png"))),
                      SizedBox(
                        height: 10,
                      ),

                      Text("Change Password", style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 17

                      ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width*0.4,
              decoration: BoxDecoration(
                  color: Color(0xFFE3F2FD),
                  borderRadius: BorderRadius.circular(20)

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      child: Image(image: AssetImage("assets/ewallet.png"))),
                  SizedBox(
                    height: 10,
                  ),

                  Text("E-Wallet", style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 18

                  ),)
                ],
              ),
            ),
          ),
        
              
        // Expanded(
        //   child: Padding(
        //     padding: const EdgeInsets.all(9.0),
        //     child: Container(
        //       // height: 50,
        //       // color: Colors.grey,
        //       // child: GridView.count(crossAxisCount: 2,
        //       // mainAxisSpacing: 10,
        //       // crossAxisSpacing: 20,
        //       // shrinkWrap: true,
        //       // children: [
        //       //   for(int i = 0; i < ofServices.length ; i++)...[
        //       //     Padding(
        //       //       padding: const EdgeInsets.all(8.0),
        //       //       child: Container(
        //       //         decoration: BoxDecoration(
        //       //           boxShadow: [
        //       //             BoxShadow(
        //       //               color: Colors.black.withOpacity(.05),
        //       //               spreadRadius: 2
        //       //             )
        //       //           ],
        //       //           color: Color(0xFFE3F2FD),
        //       //           borderRadius: BorderRadius.circular(20),
        //       //           border: Border.all(
        //       //             color:Color(0xFFE3F2FD),
        //       //
        //       //           ),
        //       //
        //       //
        //       //         ),
        //       //         child: Column(
        //       //           mainAxisAlignment: MainAxisAlignment.center,
        //       //           children: [
        //       //             Container(
        //       //               height : 50,
        //       //                 child: Image.asset("assets/${ofServices[i].Image}.png")),
        //       //             SizedBox(
        //       //               height: 15,
        //       //             ),
        //       //             Text("${ofServices[i].Title}", style: TextStyle(
        //       //               fontSize: 18,
        //       //               fontWeight: FontWeight.bold,
        //       //               color: Colors.blue.shade900
        //       //             ),)
        //       //           ],
        //       //         ),
        //       //
        //       //       ),
        //       //     )
        //       //   ]
        //       // ],),
        //     ),
        //   ),
        // )

        ],

      ),

    );
  }
}
