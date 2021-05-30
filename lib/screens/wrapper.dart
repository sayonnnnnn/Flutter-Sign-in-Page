import 'package:flutter/material.dart'; 
import 'package:provider/provider.dart'; 
import 'package:hello_world/models/user.dart';
import 'package:hello_world/screens/Authenticate/authenticate.dart'; 
import 'package:hello_world/screens/Home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {   
    final user = Provider.of<Userrr>(context);
    print(user);    
    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return PersistentBottomSheetDemo();
    }    
  }
}   