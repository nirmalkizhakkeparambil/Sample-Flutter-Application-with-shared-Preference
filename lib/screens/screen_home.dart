

import 'package:flutter/material.dart';
import 'package:flutter_application_4/screens/screen_log.dart';
import 'package:flutter_application_4/screens/screen_recycleView.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';


class register_screen extends StatelessWidget {
  const register_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Home'),actions: [IconButton(onPressed: (){signout(context);}, icon:Icon(Icons.exit_to_app_outlined),),],),
    body:Container(width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height,
    
      child: ElevatedButton(onPressed: (){gotoList(context);} , child: Container(
          decoration:new BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/database.png"),
              fit: BoxFit.cover
            ),

),),),
    ),);
  
  }
  signout(BuildContext ctx) async{ final _sherespreff =await SharedPreferences.getInstance();
    await _sherespreff.clear();
    Navigator.of(ctx).pushAndRemoveUntil( 
      MaterialPageRoute(
        builder: (ctx)=>  log_screen()),(route)=>false);
    }
    gotoList(BuildContext ctx1){Navigator.of(ctx1).push(MaterialPageRoute(builder: (ctx1)=>recycleView_screen()));}

}