import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:security/cubids/security_cupid/security_cubid.dart';
import 'package:security/screen/add_new_screen/add_new_screen.dart';
import 'package:security/screen/enter_screen/enter_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    _init();

    super.initState();
  }
  _init()async{
    SharedPreferences password = context.watch<SecurityCubid>()._pref;
    if(box.isNotEmpty){
      print("eski");
      Navigator.push(context, CupertinoPageRoute(builder: (context)=> const EnterPassword()));
    }
    else{
      print("yangi");
      Navigator.push(context, CupertinoPageRoute(builder: (context)=> const NewPassword()));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body : Text("Hello")
    );
  }
}
