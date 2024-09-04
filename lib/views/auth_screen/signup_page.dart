import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:me/views/auth_screen/login_page.dart';
import 'package:me/views/auth_screen/send_otp.dart';

class Signup_Page extends StatefulWidget {
  const Signup_Page({super.key});

  @override
  State<Signup_Page> createState() => _Signup_PageState();
}

class _Signup_PageState extends State<Signup_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => ApplyScreen()),
            );
          }, icon: Icon(Icons.arrow_back_rounded),),
        ),
        extendBodyBehindAppBar: true,
        body: MyForm(),
      ),
    );
  }
}
class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // A key for managing the form
  String _fast_name = ''; // Variable to store the entered name
  String _last_name = '';
  String _email = ''; // Variable to store the entered email
  String _passwored = '';
  String _re_password = '';

  void _submitForm() {
    // Check if the form is valid
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Get.to(ApplyScreen());
      print('Name: $_fast_name'); // Print the name
      print('Mobile Number: $_last_name'); // Print the email
      print("Email ID/Phone Number: $_email" );
      print("Password: $_passwored");
      print("Re-enter Password: $_re_password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33907C),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to tradly",style: TextStyle(color: Colors.white,fontSize: 24),),
              SizedBox(height: 29.26,),
              Text("Signup to your account",style: TextStyle(color: Colors.white,fontSize: 16),),
              Form(
                key: _formKey, // Associate the form key with this Form widget
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: "Fast Name",
                              labelStyle: TextStyle(
                                  color: Colors.white
                              ),

                            ), // Label for the name field
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Fast Name.'; // Return an error message if the name is empty
                              }
                              return null; // Return null if the name is valid
                            },
                            onSaved: (value) {
                              _fast_name = value!; // Save the entered name
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: "Last Name",
                              labelStyle: TextStyle(
                                  color: Colors.white
                              ),

                            ), // Label for the name field
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your Last Name.'; // Return an error message if the name is empty
                              }
                              return null; // Return null if the name is valid
                            },
                            onSaved: (value) {
                              _last_name = value!; // Save the entered name
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: "Email ID/Phone Number",
                              labelStyle: TextStyle(
                                  color: Colors.white
                              ),

                            ), // Label for the email field
                            validator: (value) {
                              // Validation function for the email field
                              if (value!.isEmpty) {
                                return 'Please enter your Email ID/Phone Number.'; // Return an error message if the email is empty
                              }
                              return null; // Return null if the email is valid
                            },
                            onSaved: (value) {
                              _email = value!; // Save the entered email
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: Colors.white
                              ),

                            ), // Label for the email field
                            validator: (value) {
                              // Validation function for the email field
                              if (value!.isEmpty) {
                                return 'Please enter your Password.'; // Return an error message if the email is empty
                              }
                              return null; // Return null if the email is valid
                            },
                            onSaved: (value) {
                              _passwored = value!; // Save the entered email
                            },
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(40),
                              ),

                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              labelText: "Re-enter Password",
                              labelStyle: TextStyle(
                                  color: Colors.white
                              ),

                            ), // Label for the email field
                            validator: (value) {
                              // Validation function for the email field
                              if (value!.isEmpty) {
                                return 'Please enter your Re-enter Password.'; // Return an error message if the email is empty
                              }
                              return null; // Return null if the email is valid
                            },
                            onSaved: (value) {
                              _re_password = value!; // Save the entered email
                            },
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shadowColor: Colors.greenAccent,
                              elevation: 3,
                              fixedSize: Size(306, 48), // specify width, height
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20,))),
                          onPressed: _submitForm, // Call the _submitForm function when the button is pressed
                          child: Text('Create',style: TextStyle(color: Color(0xff13B58C),fontSize: 16),), // Text on the button
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Have an account ?",style: TextStyle(color: Colors.white),),
                            SizedBox(height: 21.94,),
                            TextButton(onPressed: (){
                              Get.to(ApplyScreen());
                            }, child: Text("Sign in",style: TextStyle(color: Colors.white),)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
