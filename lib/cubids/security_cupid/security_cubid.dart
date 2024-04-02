import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:security/data/models/model.dart';
import 'package:flutter/material.dart';
import 'package:security/screen/home_screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecurityCubid extends Cubit<PasswordModel> {
  SecurityCubid()
      : super(
          PasswordModel(password: ""),
        );
  List password = [];

  SharedPreferences? _pref;

  Future<void> _getSharedInstance() async {
    _pref = await SharedPreferences.getInstance();

  }

  add(String v, BuildContext context) {
    password.add(v);
    emit(state.copyWith(password: v));
  }

  delete() {
    password.removeAt(password.length - 1);
    emit(state);
  }

  void _showToast(BuildContext context, String txt, Color clr) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(Fluttertoast.showToast(
        msg: txt,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: clr,
        textColor: Colors.white,
        fontSize: 16.0) as SnackBar);
  }

  check(BuildContext context){
    if (password.length >= 4) {
      Navigator.push(context, CupertinoPageRoute(builder: (context) => const HomeScreen()));
      _showToast(context, "Save", Colors.green);
      String pass  = "";
      for(int i = 0; i < password.length ;i++){
        pass = pass + password[i];
      }
      _getSharedInstance();
      if(_pref != null){
        _pref!.setString("password", pass);
      }
    }
  }
}
