import 'package:flutter/material.dart'; 
import 'package:hello_world/models/user.dart';  
import 'package:firebase_auth/firebase_auth.dart'; 
import 'package:provider/provider.dart'; 
import 'package:cloud_firestore/cloud_firestore.dart';       

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance; 
  
  Userr _userFromFirebaseUser(User user){
    try{
      return user != null ? Userr(uid: user.uid): null; 
    }catch(e) {
      print(e.toString()); 
    }
  }

   // auth change user stream
  Stream<Userr> get user {
    return _auth.authStateChanges().map((User user) => _userFromFirebaseUser(user));
      //.map(_userFromFirebaseUser);
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());   
      return null;
    }
  }

  // sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user;
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    } 
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}