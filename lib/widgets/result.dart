import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final void  Function() onClearState;

  Result(
      {super.key,
      required this.count,
      required this.total,
      required this.onClearState});

  @override
  Widget build(BuildContext context) {
    String msg = '';
    Widget img;

    if (0 <= count && count <= 3) {
      msg = "Ебать ты лох-тупейший\n с извилиной одноядерной.";
      img = Image.asset('assets/img/bad.jpg');
    } else if (4 <= count && count <= 7) {
      msg = "Хорошо, но ты бы лучше не смог.";
      img = Image.asset('assets/img/good.jpg');
    } else {
      msg = "Ебать, нихуя, да это же новый гений";
      img = Image.asset('assets/img/exelent.jpg',);
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 15,
            spreadRadius: 0,
            offset: Offset(2, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
        gradient: LinearGradient(colors: [
          Color(0xFF5537ff),
          Color(0xFF8131ff),
          Color(0xFFbd27ff),
        ]),
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),

          ElevatedButton(
            onPressed: onClearState,
            child: Text(
              "Пройти еще раз"
            ),
            ),
        ],
      ),
    );
  }
}
