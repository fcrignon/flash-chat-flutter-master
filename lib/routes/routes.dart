import 'package:flutter/material.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/welcome_screen.dart';

// import '../screens/chat_screen.dart';
// import '../screens/login_screen.dart';
// import '../screens/registration_screen.dart';
// import '../screens/welcome_screen.dart';

final routes = {
  LoginScreen.id : (BuildContext context) => LoginScreen(),
  ChatScreen.id : (BuildContext context) =>  ChatScreen(),
  RegistrationScreen.id : (BuildContext context) => RegistrationScreen(),
  WelcomeScreen.id : (BuildContext context) => WelcomeScreen(),
};