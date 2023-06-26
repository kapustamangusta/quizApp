import "package:flutter/material.dart";

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Верстка теория"),
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.red[400],
                width: 50,
                child: Text(
                  'Dart!',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black54
                  ),
                  softWrap: false,
                  overflow: TextOverflow.fade,
                ),
              ),

              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.redAccent,
              ),

              Expanded(child: Image.network('https://w.forfun.com/fetch/4a/4af0bcc2b0c34fd573eca9f1be9ab245.jpeg')),
            ],
          ),
        ),
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}
