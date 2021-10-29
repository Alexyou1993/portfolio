import 'package:flutter/material.dart';
import 'package:portfolio/constants/app_constants.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

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
              'Projects',
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
          'Screens of apps that i made, for more details contact me from the contact section below',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 16.0),
        ),
        SizedBox(
          height: 24.0,
        ),
        Container(
          height: 650.0,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 738 ? 5 : 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: MediaQuery.of(context).size.width > 738 ? MediaQuery.of(context).size.aspectRatio *0.5 : MediaQuery.of(context).size.aspectRatio,
              ),
              //scrollDirection: Axis.horizontal,
              itemCount: kWorksAssets.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    height: 500.0,
                    child: FittedBox(
                      fit: MediaQuery.of(context).size.width > 738 ? BoxFit.scaleDown:BoxFit.cover,
                      child: TextButton(
                        onPressed: () => showDialog<String>(
                          context: context,
                          builder: (BuildContext context) {
                            return FittedBox(
                              child: AlertDialog(
                                title: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      kWorksAssets[index],
                                    ),
                                  ],
                                ),
                                actions: <Widget>[
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white30,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(75.0),
                                      ),
                                    ),
                                    child: const Text(
                                      'back',
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        child: Image.asset(
                          kWorksAssets[index],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
