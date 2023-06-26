import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер Теория'),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network('https://w.forfun.com/fetch/4a/4af0bcc2b0c34fd573eca9f1be9ab245.jpeg').image,
            fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.circular(30)
        ),
      
      ),
    );
  }

  /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контейнер Теория'),
      ),
       body: Center(
         child: Container(
          decoration: BoxDecoration(
            color: Colors.amber[600],
            //shape: BoxShape.circle,
            border: Border.all(),
          ),
          alignment: Alignment.center,
          //width: 300,
          //height: 300,
          margin: const EdgeInsets.only(left: 100),
          padding: const EdgeInsets.all(0.0),
          child: Text("Artem")
         ),
       ),
    );
  } */
}
