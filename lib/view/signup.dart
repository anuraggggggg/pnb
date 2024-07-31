import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool showPasswords = false;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Container(
                  width: 300,
                    child: Image.asset("assets/iconb.png")),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Text("Sign Up", style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                  child: Text("Username")),
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter Username",
                    // label: Text("Username"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    )

                ),

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  child: Text("Password")),
              TextField(
                obscureText: showPasswords,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        showPasswords = !showPasswords;
                      });
                    },
                      child: Icon(Icons.visibility)),
                    hintText: "Enter Password",
                    // label: Text("Username"),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    )

                ),

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: double.infinity,
                  child: Text("Confirm Password")),
              TextField(
                obscureText:showPassword,
                decoration: InputDecoration(

                    hintText: "Confirm Password",
                   suffixIcon: GestureDetector(
                     onTap: (){
                     showPassword = !showPassword;
                     setState(() {

                     });
                     },
                       child: Icon( showPassword ? Icons.visibility : Icons.visibility_off)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    )

                ),

              ),
              SizedBox(
                height: 10,
              ),

              Container(
                  child: Align(
                    alignment: AlignmentDirectional.bottomEnd,
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Text("Already User ?")))),

              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue.shade900),

                    ),
                      onPressed: (){}, child: Text("Sign Up", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),))),



            ],
          ),
        ),
      ),

    );
  }
}
