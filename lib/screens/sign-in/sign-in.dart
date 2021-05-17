import 'package:flutter/material.dart'; 
import 'package:hello_world/common/custombutton.dart'; 

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Authentication"),
        elevation: 10.0, // adds a shadow beneath the appbar
      ),
      body: buildContainer(),
    );
  }

  // -------- buildContainer() --------------------------------
  Widget buildContainer() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              //fontStyle: FontStyle(4, 'Times New Roman'),
            ),
          ),
          SizedBox(height: 40.0),
          CustomRaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('images/google-logo.png'),
                Text(
                  'Sign in with Google',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset('images/google-logo.png'),
                ),
              ],
            ),
            color: Colors.white,
            borderRadius: 16.0,
            onPressed: () {},
          ),
          SizedBox(height: 8.0),
          Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Text(
              'Sign in as Guest!',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            color: Colors.tealAccent,
            borderRadius: 16.0,
            onPressed: (){}, //signInAnonymously,
          ),
        ],
      ),
    );
  }
}