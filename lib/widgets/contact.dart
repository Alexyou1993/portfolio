import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';

import 'contact_me_card.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 36.0,
        ),
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Contact',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          'For more information contact me in any of the given social medias below',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
        MediaQuery.of(context).size.width > 450
            ? Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  kContactMe.length,
                  (index) => ContactMeCard(
                    contactMeModel: kContactMe[index],
                  ),
                ),
              )
            : Container(
                height: 220.0,
                child: PageView.builder(
                  controller: PageController(viewportFraction: 0.8),
                  itemCount: kContactMe.length,
                  itemBuilder: (BuildContext context, int index) => ContactMeCard(
                    contactMeModel: kContactMe[index],
                  ),
                ),
              ),
        SizedBox(
          height: 36.0,
        ),
      ],
    );
  }
}
