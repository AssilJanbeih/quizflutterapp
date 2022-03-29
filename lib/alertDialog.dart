import 'package:flutter/material.dart';
import 'package:quizflutterapp/main.dart';

showPopUp(context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'End Of Questions',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Icon(
            Icons.celebration_rounded,
            size: 100,
            color: Colors.green,
          ),
          Text(
            'Congrats you have answered all the questions.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: TextButton(
            onPressed: () => Navigator.pop(context, 'Start Over'),
            child: const Text(
              'Start Over',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
