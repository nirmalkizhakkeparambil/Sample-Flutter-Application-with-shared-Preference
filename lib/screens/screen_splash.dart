import 'package:flutter/material.dart';
import 'package:flutter_application_4/main.dart';
import 'package:flutter_application_4/screens/screen_log.dart';
import 'package:flutter_application_4/screens/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    isUserLogged();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Spalsh',
        style: TextStyle(color: Colors.blue, fontSize: 55),
      ),
    );
  }

  Future<void> gotoregister() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => log_screen()));
  }

  Future<void> isUserLogged() async {
    final sharedPrefs = await SharedPreferences.getInstance();
    final _userloggedIn = sharedPrefs.getBool(PRIME_KEEY);
    if (_userloggedIn == null || _userloggedIn == false) {
      gotoregister();
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx1) => log_screen()));
    }
  }
}
