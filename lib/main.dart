import 'package:flutter/material.dart';
import 'package:hello_world/screens/wrapper.dart'; 

// Future<void> main() async {            
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(SayonApp());


Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp(SayonApp());
}


// SayonApp is a class
class SayonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {        
    return MaterialApp(
      title: 'Flutter App 1.2!!',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Wrapper(),     
    );
  }
}

// -------------- CustomRaisedButton ------------------------------

// class CustomRaisedButton extends StatelessWidget {
//   final Widget child;
//   final Color color;
//   final double borderRadius;
//   final VoidCallback onPressed;

//   // Custom Constructor -->
//   CustomRaisedButton({this.child, this.color, this.borderRadius, this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     // In order to add a height parameter to the CustomRaisedButton
//     // we need to wrap it around a SizedBox widget because by default,
//     // RaisedButton widget DOES NOT take 'height' as a legit argument!!
//     return SizedBox(
//       height: 50.0,
//       child: RaisedButton(
//         child: child,
//         color: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(
//             Radius.circular(borderRadius),
//           ),
//         ),
//         elevation: 5.0,
//         onPressed: onPressed,
//       ),
//     );
//     // return RaisedButton(
//     //   child: child,
//     //   color: color,
//     //   shape: RoundedRectangleBorder(
//     //     borderRadius: BorderRadius.all(
//     //       Radius.circular(borderRadius),
//     //     ),
//     //   ),
//     //   onPressed: onPressed,
//     // );
//   }
// }

// -----------------End of CustomRaisedButton -----------------------

// ---------------- LandingPage -------------------------------------
// class LandingPage extends StatefulWidget {
//   @override
//   _LandingPageState createState() => _LandingPageState();
// }

// class _LandingPageState extends State<LandingPage> {
//   User _user;

//   // Now in general, when the user is not using the application, it doesn not get signed out automatically
//   // hence, we have to do something about the involuntary sign-out which is taking place
//   @override
//   void initState() {
//     super.initState();
//     _updateUser(FirebaseAuth.instance.currentUser);
//   }

//   void _updateUser(User user) {
//     //print('User ID(sayon): ${user.uid}');
//     setState(() {
//       _user = user;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_user == null) {
//       return SignInPage(
//         onSignIn: _updateUser,
//       ); // If thier is no user in the firebase, then the user will be redirected to the Sign in Page
//     } else {
//       return HomePage(
//         onSignOut: () {},
//         //onSignOut: (null) => _updateUser(null),
//       ); // If their is a user then  a Container will be returned...
//     }
//   }
// }

// -------------------------------------------------------------------


// --------------------- SIGN IN PAGE -------------------------------
// class SignInPage extends StatelessWidget {
//   const SignInPage({Key key, @required this.onSignIn}) : super(key: key);

//   final void Function(User) onSignIn;

//   Future<void> signInAnonymously() async {
//     try {
//       final userCredentials = await FirebaseAuth.instance.signInAnonymously();
//       onSignIn(userCredentials.user); // If our firebase authentication get's authenticated then,
//       print('${userCredentials.user.uid}');
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("App"),
//         elevation: 10.0, // adds a shadow beneath the appbar
//       ),
//       body: buildContainer(),
//     );
//   }

//   // -------- buildContainer() --------------------------------
//   Widget buildContainer() {
//     return Container(
//       color: Colors.grey[200],
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           Text(
//             'Sign in',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 32.0,
//               fontWeight: FontWeight.bold,
//               //fontStyle: FontStyle(4, 'Times New Roman'),
//             ),
//           ),
//           SizedBox(height: 35.0),
//           CustomRaisedButton(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Image.asset('images/google-logo.png'),
//                 Text(
//                   'Sign in with Google',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.black,
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.0,
//                   child: Image.asset('images/google-logo.png'),
//                 ),
//               ],
//             ),
//             color: Colors.white,
//             borderRadius: 16.0,
//             onPressed: () {},
//           ),
//           SizedBox(height: 8.0),
//           CustomRaisedButton(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Image.asset('images/facebook-logo.png'),
//                 Text(
//                   'Sign in With Facebook',
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Opacity(
//                   opacity: 0.0,
//                   child: Image.asset('images/facebook-logo.png'),
//                 ),
//               ],
//             ),
//             color: Colors.indigo,
//             borderRadius: 16.0,
//             onPressed: () {},
//           ),
//           SizedBox(height: 8.0),
//           Text(
//             'or',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 16.0,
//               color: Colors.black,
//             ),
//           ),
//           SizedBox(height: 8.0),
//           CustomRaisedButton(
//             child: Text(
//               'Sign in as Guest!',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.black,
//               ),
//             ),
//             color: Colors.tealAccent,
//             borderRadius: 16.0,
//             onPressed: signInAnonymously,
//           ),
//         ],
//       ),
//     );
//   }
  // ---------------- End of buildContainer() -----------------------

  // ------------------ signInWithGoogle() --------------------------

  // void signInWithGoogle() {}

  // --------------- End of signInWithGoogle() ----------------------
// }
// ------------------End of SignInPage ------------------------------

// ---------------------- HomePage ------------------------------------------

// class HomePage extends StatelessWidget {
//   final VoidCallback onSignOut;
//   const HomePage({Key key, @required this.signOut}) : super(key: key);

//   Future<void> signOut() async {
//     try {
//       await FirebaseAuth.instance.signOut();
//       onSignOut();
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//         actions: <Widget>[
//           FlatButton(
//             child: Text(
//               'Logout',
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.white,
//               ),
//             ),
//             onPressed: signOut,
//           ),
//         ],
//       ),
//     );
//   }
// }

// --------------------------------------------------------------------------
