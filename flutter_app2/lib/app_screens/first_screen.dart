
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/model/fact.dart';

import 'detail_screen.dart';

Future<List<Fact>> getHttp() async {
  try {
    Response response = await Dio().get(
        "https://cat-fact.herokuapp.com/facts/random?animal_type=cat&amount=10");
    if (response.statusCode == 200) {
      //return parseFacts(response.data);
      return (response.data as List)
          .map((json) => Fact.fromJson(json))
          .toList();
    } else {
      print(response.statusCode);
      return null;
    }
  } catch (e) {
    print(e);
    return null;
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Fact>>(
      future: getHttp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) print(snapshot.error);

        return snapshot.hasData
            ? FactList(facts: snapshot.data)
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}



//to create a preview
String getSmallSentences(String sentence) {
  if (sentence.length > 30) {
    String s = sentence.substring(0, 30);
    s += "...";
    return s;
  } else
    return sentence;
}


class FactList extends StatelessWidget {
  final List<Fact> facts;

  FactList({Key key, this.facts}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return new ListView.builder(
        itemCount: facts.length,
        itemBuilder: (BuildContext ctxt, int index) {
         return  Card(
              child: ListTile(
                title: Text(getSmallSentences('${facts[index].text}')),
                onTap: () {
                  Navigator.push(
                      ctxt,
                      MaterialPageRoute(
                          builder: (ctxt) => DetailScreen(),
                          settings: RouteSettings(
                            arguments: facts[index],
                          )));
                },
              ));
        });
  }
}