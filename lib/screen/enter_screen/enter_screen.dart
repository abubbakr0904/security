import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:security/cubids/security_cupid/security_cubid.dart';
import 'package:security/screen/add_new_screen/widgets/widget.dart';

class EnterPassword extends StatefulWidget {
  const EnterPassword({super.key});

  @override
  State<EnterPassword> createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
  List password = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body : Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Enter password" , style: TextStyle(
                  color : Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 20
              ),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getCard(Colors.green, context.read<SecurityCubid>().password.length >= 1 ? true : false),
                  SizedBox(width: 30,),
                  getCard(Colors.green, context.read<SecurityCubid>().password.length >= 2 ? true : false),
                  SizedBox(width: 30,),
                  getCard(Colors.green, context.read<SecurityCubid>().password.length >= 3 ? true : false),
                  SizedBox(width: 30,),
                  getCard(Colors.green, context.read<SecurityCubid>().password.length >= 4 ? true : false),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("1" , context);
                      setState(() {});
                    },
                    child : getNumberCard("1"),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("2" , context);
                      setState(() {});

                    },
                    child : getNumberCard("2"),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("3" , context);
                      setState(() {});
                    },
                    child : getNumberCard("3"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("4" ,context);
                      setState(() {});
                    },
                    child : getNumberCard("4"),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("5" , context);
                      setState(() {});
                    },
                    child : getNumberCard("5"),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("6" , context);
                      setState(() {});
                    },
                    child : getNumberCard("6"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("7" , context);
                      setState(() {});
                    },
                    child : getNumberCard("7"),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("8" , context);
                      setState(() {});
                    },
                    child : getNumberCard("8"),
                  ),
                  SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("9" , context);
                      setState(() {});
                    },
                    child : getNumberCard("9"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("0" , context);
                      setState(() {});
                    },
                    child : getNumberCard("<-"),
                  ),
                  const SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().add("0" , context);
                      setState(() {});
                    },
                    child : getNumberCard("0"),
                  ),
                  const SizedBox(width: 30,),
                  GestureDetector(
                    onTap: (){
                      context.read<SecurityCubid>().check(context);
                      setState(() {});
                    },
                    child : getNumberCard("->"),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
