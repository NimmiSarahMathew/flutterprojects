import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.purple,
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                  "Trial 1",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none
                  ),
                ),
                Text(
                  "Trial 2",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none
                  ),
                ),
                GetImageAsset(),
                TrialButton()
              ],
            )
        )
    );




  }

}


class GetImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/girlbaby.jpeg');
    Image image = Image(image: assetImage);

    return Container(child : image);
  }

}

class TrialButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: ElevatedButton(
            onPressed: () => clickMe(context)
            ,
            child: Text(
                'Click Me'
            )
        )
    );


  }

  void clickMe(BuildContext context ){

    var alertDialog = AlertDialog(
        title: Text('Button Clicked!'),
        content: Text('Button Clicked')
    );

    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog

    );
  }
}