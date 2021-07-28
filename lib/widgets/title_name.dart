import 'package:flutter/material.dart';

class TitleName extends StatelessWidget {
  const TitleName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          child: Padding(
            padding: EdgeInsets.only(right: 4.0),
            child: Text(
              'I',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 22.0),
            ),
          ),
        ),
        Text(
          'URA Alexandru Mihai',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 22.0,
          ),
        ),
      ],
    );
  }
}
