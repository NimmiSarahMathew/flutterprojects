
import 'dart:convert';

import 'package:dio/dio.dart';
import "package:flutter/material.dart";
import 'package:flutter_app2/app_screens/first_screen.dart';




void main() {
  runApp(Background());

}




class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Assessment",
        home: Scaffold(
            body: FirstScreen()
        )
    );
  }

}

