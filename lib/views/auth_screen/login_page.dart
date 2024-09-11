import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:me/controller/auth_controller.dart';
import 'package:me/views/auth_screen/signup_page.dart';
import 'package:me/views/home_screen/navigation_var.dart';
import 'package:http/http.dart' as http;

class ApplyScreen extends StatefulWidget {
  const ApplyScreen({super.key});

  @override
  State<ApplyScreen> createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
  String _email = ''; // Variable to store the entered email
  String _password = '';

  void _submitForm() {
    Get.to(Navigation_Var());
/*
    // Check if the form is valid
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Get.to(Navigation_Var());
*/
/*
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> Navigation_Var()),
      );// Save the form data
*//*

      print('Mobile Number: $_email'); // Print the email
      print("Institute Location: $_password");
    }
*/
  }
  @override
  void initState(){
    Future.delayed(Duration.zero, ()async{
     await Get.find<AuthController>().fetchAlbum();


    Future.delayed(Duration.zero, ()async{
      await Get.find<AuthController>().fetchAlbumModel();
    }
    );

    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      backgroundColor: Color(0xff33907C),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to tradly",style: TextStyle(color: Colors.white,fontSize: 24),),
            SizedBox(height: 29.26,),
            Text("Login to your account",style: TextStyle(color: Colors.white,fontSize: 16),),
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
                            borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                                  color: Colors.white,)),
                          border: OutlineInputBorder(
                              //borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          labelText: "Email/Mobile Number",
                          labelStyle: TextStyle(color: Colors.white)

                        ), // Label for the name field
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Email/Mobile Number.'; // Return an error message if the name is empty
                          }
                          return null; // Return null if the name is valid
                        },
                        onSaved: (value) {
                          _email = value!; // Save the entered name
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
                          _email = value!; // Save the entered email
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
                      child: Text('Login',style: TextStyle(color: Color(0xff13B58C),fontSize: 16),), // Text on the button
                    ),
                    TextButton(onPressed: (){}, child: Text("Forgot your password?",style: TextStyle(color: Colors.white),)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have an account?",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 21.94,),
                        TextButton(onPressed: (){
                          Get.to(Signup_Page());
                        }, child: Text("Sign up",style: TextStyle(color: Colors.white),)),
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
    );
  }
}