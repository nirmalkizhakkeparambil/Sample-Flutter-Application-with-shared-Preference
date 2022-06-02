import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_application_4/main.dart';
import 'package:flutter_application_4/screens/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';

class log_screen extends StatefulWidget {
   log_screen({Key? key}) : super(key: key);

  @override
  State<log_screen> createState() => _log_screenState();
}

class _log_screenState extends State<log_screen> {
  
  final _textemailC = TextEditingController();

  final _textpassC = TextEditingController();
  bool _isLoading =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _textemailC,
              keyboardType: TextInputType.emailAddress,
              

              decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder(),floatingLabelBehavior: FloatingLabelBehavior.always),
               validator: (_textemailC) {
              if(_textemailC ==null) {
                 return 'Please enter some text';
              }
                return null;
              },
                
          
            ),
            SizedBox(height: 10)
            ,TextFormField(
              controller: _textpassC,
              

              decoration: InputDecoration(labelText: 'Password',border: OutlineInputBorder(),),
              obscureText: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
              
               checklogin(context);
                  
                },
                child: Text('Sign in'),
              ),
            ),

           
          ],
        ),
      ),
    );
  }
void checklogin(BuildContext ctx)async{
  final email =_textemailC.text;
 
  if(!EmailValidator.validate(email)==false) 
  {
    final _sherespreff =await SharedPreferences.getInstance();
    await _sherespreff.setBool(PRIME_KEEY,true);
 Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx)=>register_screen()));

  }else{
   
      final errormessage = 'Details not valid';
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(behavior: SnackBarBehavior.floating,margin: EdgeInsets.all(8),content: Text(errormessage)));

   
}}}
