import 'package:flutter/material.dart';
import 'package:melody0/screens/authenticate/authenticate.dart';
import 'package:melody0/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:melody0/models/user.dart';



class Wrapper extends StatelessWidget {
@override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return home or authenticate
    if (user == null){
      return Authenticate();
    }
    else
      {
        return Home();
      }
  }
}
