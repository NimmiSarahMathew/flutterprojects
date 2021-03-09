import 'package:flutter/material.dart';
import 'package:flutter_app2/model/fact.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Fact fact = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Detail Screen",
        home: Scaffold(

            body: Container(

                margin: EdgeInsets.all(100),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text("Type : " + fact.type),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        child: Text("Created At : " + fact.createdAt),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                        child: Text(
                            "Text : " + fact.text),

                    )
                  ],
                ))));
  }
}
