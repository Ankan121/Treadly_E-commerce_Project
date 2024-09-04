import 'package:flutter/material.dart';
import 'package:me/views/auth_screen/signup_page.dart';

class OTP_Varification extends StatefulWidget {
  const OTP_Varification({super.key});

  @override
  State<OTP_Varification> createState() => _Send_OTPState();
}

class _Send_OTPState extends State<OTP_Varification> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff33907C),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context)=> Signup_Page()),
            );
          }, icon: Icon(Icons.arrow_back_rounded),),
        ),
        extendBodyBehindAppBar: true,
        body: varification(),
      ),
    );
  }
}
class varification extends StatefulWidget {
  const varification({super.key});

  @override
  State<varification> createState() => _varificationState();
}

class _varificationState extends State<varification> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  String _otp = '';
  void _submit(){
    if(_form.currentState!.validate()){
      _form.currentState!.save();
      print("Mobile Number: $_otp");
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Verify your phone number",style: TextStyle(color: Colors.white,fontSize: 30),),
            SizedBox(height: 29.26,),
            Text("We have sent you an SMS with a code to",style: TextStyle(color: Colors.white,fontSize: 18),),
            Text("enter number",style: TextStyle(color: Colors.white,fontSize: 16),),
            SizedBox(height: 29.26,),
            Form(
              key: _form,
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          labelText: "a",
                          labelStyle: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter your Phone Number.";
                          }
                          return null;
                        },
                        onSaved: (value){
                          _otp = value!;
                        }
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text("Or login with Social network",style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(height: 21.94,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.greenAccent,
                        elevation: 3,
                        fixedSize: Size(306, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                    onPressed: _submit,
                    child: Text('Next',style: TextStyle(color: Color(0xff13B58C),fontSize: 16),),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

