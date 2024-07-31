import 'package:flutter/material.dart';
import 'package:pnb/modal/Base.dart';

class Sendmoney extends StatefulWidget {
  const Sendmoney({super.key});

  @override
  State<Sendmoney> createState() => _SendmoneyState();
}

class _SendmoneyState extends State<Sendmoney> {
  List<BaseBene> ofbeneficiary = [
    BaseBene(Initial: "J", Name: "Jason Tatum"),
    BaseBene(Initial: "J", Name: "Jc Bernabe"),
    BaseBene(Initial: "J", Name: "Jc BNernabe"),
    BaseBene(Initial: "J", Name: "Jc Boi"),
    BaseBene(Initial: "K", Name: "Kyrie Irving"),
    BaseBene(Initial: "L", Name: "Luca Doncic"),
    BaseBene(Initial: "T", Name: "Tina Mendez"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Send Money",
          style: TextStyle(
            color: Colors.blue.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 80, left: 10, right: 10),
        child: Material(
          elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              // color: Color(0xFFE3F2FD),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        "Select a beneficiary",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(

                  child: Container(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: ofbeneficiary.length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue.shade900,
                            child: Text("${ofbeneficiary[i].Initial}", style: TextStyle(
                              color: Colors.white
                            ),),
                          ),
                          title: Text("${ofbeneficiary[i].Name}"),
                          trailing: Icon(Icons.arrow_forward_ios),
                          onTap: () {
                            // Handle tap event here
                          },
                        );
                      },
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                      width : double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Colors.blue.shade900)
                          ),
                          onPressed: (){}, child: Text("+ ADD NEW BENEFICIARY", style: TextStyle(
                        color: Colors.white
                      ),))),

                ),
                SizedBox(
                  width: 20,
                ),
                Text("Corporate beneficiary? Enroll",style: TextStyle(
                  color: Colors.blue.shade900

                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
