import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Addbeneficiary extends StatefulWidget {
  const Addbeneficiary({super.key});

  @override
  State<Addbeneficiary> createState() => _AddbeneficiaryState();
}

class _AddbeneficiaryState extends State<Addbeneficiary> {
  final _formKey = GlobalKey<FormState>();
  final _date = TextEditingController();

  List ofRelation = [
    "Single",
    "Married",
    "Divorced"
  ];

  String  defaultvalue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Beneficiary"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("First Name"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
        height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Middle Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Last Name"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _date,
                    readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector( onTap: () async{
                        var datepicked = await showDatePicker(context: context, firstDate: DateTime(1980), lastDate: DateTime(2023));
                        if( datepicked != null){
                          setState(() {
                            _date.text = DateFormat("yyyy-MM-dd").format(datepicked);
                          });
                        }
                      },
                          child: Icon(Icons.calendar_month)),
                      label: Text("Birthdate"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  // TextFormField(
                  //   decoration: InputDecoration(
                  //     suffixIcon: Icon(Icons.arrow_downward),
                  //     label: Text("Relationship"
                  //         ""),
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(5)
                  //     ),
                  //   ),
                  // ),

                  // ListView(
                  //   children: [
                  //     va
                  //     DropdownButton(items: [
                  //       DropdownMenuItem(
                  //
                  //       )
                  //
                  //     ], onChanged: (){}),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        child: Text("ADDRESS", style: TextStyle(
                          color: Colors.blue.shade900,
                          fontWeight: FontWeight.bold
                        ),)),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Street / Room No. / Building"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("City / Town"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("State / Province"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Country"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Zip Code"),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              )),
            ), 
             
          ],
        ),
      ),

    );
  }
}
