import 'package:flutter/material.dart';
import 'package:pnb/view/dashboard.dart';
import 'package:pnb/view/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool obsecureText = false;
  bool createUser = false;

  final _username  = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Image(image: AssetImage("assets/iconb.png")),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                child: createUser ? Text("Welcome Back !" , style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade900,
                  fontWeight: FontWeight.bold,
                ),
                ) : Text("Sign Up" , style: TextStyle(
                fontSize: 30,
                color: Colors.blue.shade900,
                fontWeight: FontWeight.bold,
              ),
      ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: Text("Enter your credentials to login",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: Text("Username"),
              ),


              TextField(
                controller: _username,
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
                child: Text("Password"),
              ),

              TextField(
                controller: _password,
                obscureText: obsecureText,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      obsecureText = !obsecureText;
                    });
                  }, icon:  Icon(
                      obsecureText ?
                      Icons.visibility_off : Icons.visibility)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,

                    ),
                  ),
                ),

              ),
              SizedBox(
                height: 10,
              ),
              Container(

                width: double.infinity,
                child: Align(
                  alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: (){
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Signup() ));
                        setState(() {
                          createUser = !createUser;

                        });
                      },
                      child: Text("Create User ?",style: TextStyle(
                        fontSize: 15
                      ), ),
                    )),
              ),
              SizedBox(
                height: 10,

              ),

              Container(
                height: 40,
                width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.blue.shade900)
                    ),

                      onPressed: (){

                      if(_username.text == "anurag@gmail.com" || _username.text =="anurag"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
                      }else{

                        showDialog(context: context, builder: (context) => SimpleDialog(
                          title: Center(
                            child: Text("Wrong Credentials", style: TextStyle(
                              fontSize: 18,
                              color: Colors.red
                            ),),
                          ),
                          children: [
                            ElevatedButton(
                                onPressed: (){
                              Navigator.pop(context);
                            }, child: Container(child: Text("Try Again", style: TextStyle(
                              color: Colors.white
                            ),)),
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(Colors.blue.shade900)
                              ),
                            )
                          ],
                        ));

                      }

                      }, child: createUser ?Text("LOGIN", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                  ) : Text("Sign Up", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                  )
                  )
              ),



            ],
          ),
        ),
      ),
    );
  }
}
