import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {

  final icons;
  final count;
  final total;
  ProgressBar({super.key, this.icons,this.count, this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.contain,
            child: Text(
              '$count - $total',
            ),
          ),
          SizedBox(width: 10,),

          ...icons,
        ],
      ),
    );
  }
}