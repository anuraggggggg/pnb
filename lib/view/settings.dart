import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchOn = false;
  bool switchOn1 = false;
  bool switchOn2 = false;
  bool switchOn3 = false;
  bool switchOn4 = false;
  bool switchOn5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.blue.shade900


  ,
  title: Text("Settings", style: TextStyle(
    color: Colors.white,

  ),

  ),
  centerTitle: true,
),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MFA",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),

                Icon(Icons.keyboard_arrow_down,size: 40,)
              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Send Money ", style: TextStyle(
                  fontSize: 15
                ),),
                Switch(value: switchOn, onChanged: (value){

                  switchOn = !switchOn;
                  setState(() {

                  });

                }),

              ],
            ),

            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Bills Pay ", style: TextStyle(
                    fontSize: 15
                ),),
                Switch(value: switchOn1, onChanged: (value){

                  switchOn1 = !switchOn1;
                  setState(() {

                  });

                }),

              ],
            ),

            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Add Beneficiary", style: TextStyle(
                    fontSize: 15
                ),),
                Switch(value: switchOn2, onChanged: (value){

                  switchOn2 = !switchOn2;
                  setState(() {

                  });

                }),

              ],
            ),

            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Change Password ", style: TextStyle(
                    fontSize: 15
                ),),
                Switch(value: switchOn3, onChanged: (value){

                  switchOn3 = !switchOn3;
                  setState(() {

                  });

                }),

              ],
            ),

            Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("E-Wallet", style: TextStyle(
                    fontSize: 15
                ),),
                Switch(value: switchOn4, onChanged: (value){

                  switchOn4 = !switchOn4;
                  setState(() {

                  });

                }),

              ],
            ),

            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 15,
            ),
            Divider(
              color: Colors.black,
            ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Other Settings", style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
            ),),
            Icon(Icons.keyboard_arrow_down_rounded, size: 40,)
          ],
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Biometeric", style: TextStyle(
                    fontSize: 15
                ),),
                Switch(value: switchOn5, onChanged: (value){

                  switchOn5 = !switchOn5;
                  setState(() {

                  });

                }),

              ],
            ),





          ],
        ),
      ),
    );
  }
}
