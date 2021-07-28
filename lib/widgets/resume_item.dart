import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';

import '../widget_barrel.dart';

class ResumeItem extends StatelessWidget {
  const ResumeItem({Key? key, required this.resume, required this.iconData}) : super(key: key);
  final ResumeModel resume;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Theme.of(context).accentColor,
          radius: 25,
          child: Icon(
            iconData,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 16.0,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${resume.period}',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).accentColor,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '${resume.title}',
                style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 24.0),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '${resume.place}',
                style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black, fontSize: 18.0),
              ),
              Text(
                '${resume.description}',
                style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 16.0),
              ),
              Divider(
                height: 42.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
