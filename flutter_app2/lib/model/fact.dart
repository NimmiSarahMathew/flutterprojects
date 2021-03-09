import 'package:flutter/material.dart';

class Fact {
  final String type;
  final String createdAt;
  final String text;

  Fact({this.type, this.createdAt, this.text});

  factory Fact.fromJson(Map<String, dynamic> json) {
    return Fact(
      type: json['type'] as String,
      createdAt: json['createdAt'] as String,
      text: json['text'] as String,
    );
  }
}