import 'package:flutter/material.dart';

import '../constants.dart';

class MessageBuble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isCurrrentUser;  



  const MessageBuble({Key key, @required this.text, @required this.sender, this.isCurrrentUser,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: isCurrrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'From $sender',
            style: TextStyle(color: Colors.black54),
          ),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.only(
              topLeft: isCurrrentUser ? Radius.circular(30.0) : Radius.circular(0.0),
              topRight: isCurrrentUser ? Radius.circular(0.0) : Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            color: isCurrrentUser ? Colors.lightBlueAccent : Colors.amber,
            shadowColor: Colors.black54,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                '$text',
                style: kTextStyleBuble,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
