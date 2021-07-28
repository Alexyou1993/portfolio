import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  static const List<String> ABOUT_ME_VALUES = [
    'Alexandru Mihai IURA',
    'November 20, 1993',
    'Somcuta Mare, Maramures',
    'Cluj Napoca, Cluj',
    'alexiura93@gmail.com',
    '0754363629',
  ];
  static const List<String> ABOUT_ME_LABELS = [
    'Name:',
    'Date of Birth:',
    'Place of Birth:',
    'Current location:',
    'Email:',
    'Phone:',
  ];

  List<Widget> getDetails() {
    List<Widget> values = [];
    for (int i = 0; i < ABOUT_ME_VALUES.length; i++) {
      values.add(
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 130.0,
                child: Text(
                  ABOUT_ME_LABELS[i],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                width: 24.0,
              ),
              Flexible(
                child: Text(
                  ABOUT_ME_VALUES[i],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return values;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.width * 0.1),
          child: Row(
            children: <Widget>[
              Visibility(
                visible: constraints.maxWidth > 768,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18.0,
                    ),
                    child: Image.asset(
                      'assets/portfolio_img.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'About Me',
                          style: TextStyle(
                              fontSize: constraints.maxWidth > 768 ? 50.0 : 38.0, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      Flexible(
                        child: Text(
                          'Passionately curious developer with 8 months of extensive experience in building Flutter mobile applications ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Visibility(
                        visible: constraints.maxWidth < 768,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Image.asset(
                            'assets/portfolio_img.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 42.0,
                      ),
                      Column(
                        children: getDetails(),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: [
                            Text(
                              '+14',
                              style: TextStyle(
                                  color: Theme.of(context).accentColor, fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Flexible(
                              child: Text(
                                'Project Complete in Flutter see on GitHub',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary:
                                  Theme.of(context).accentColor, // background
                                  onPrimary: Colors.white, // foreground
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100.0))),
                              onPressed: () {
                                launch('https://drive.google.com/file/d/1DKU8bHBT_eWZfw9nR-kiiJP0hE_InV-1/view?usp=sharing');
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  'CV',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary:
                                Theme.of(context).accentColor, // background
                                onPrimary: Colors.white, // foreground
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0))),
                            onPressed: () {
                              launch('https://github.com/Alexyou1993');
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'GitHub',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
