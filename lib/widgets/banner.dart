import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/bannerArrowDown.dart';

class BannerBackground extends StatefulWidget {
  const BannerBackground({Key? key}) : super(key: key);

  @override
  _BannerBackgroundState createState() => _BannerBackgroundState();
}

class _BannerBackgroundState extends State<BannerBackground> {
  static const List<String> DESIGNATIONS = [
    'Flutter Developer.',
    'Flutter Developer.',
  ];

  List<AnimatedText> getDesignations(BuildContext ctx) {
    List<AnimatedText> animatedTexts = <AnimatedText>[];



    for (String designation in DESIGNATIONS) {
      animatedTexts.add(
        TyperAnimatedText(
          designation,
          speed: Duration(milliseconds: 100),
          textStyle: TextStyle(
            fontSize: 32.0,
            color: Theme.of(ctx).accentColor,
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w800,
          ),
        ),
      );
    }

    return animatedTexts;
  }
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Container(
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.blueGrey.shade200,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(),
                Text(
                  'Hey! I AM',
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 8.0,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Alexandru Mihai IURA',
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'I\'m a',
                          style: const TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        AnimatedTextKit(
                          animatedTexts: getDesignations(context),
                          totalRepeatCount: 4,
                          pause: const Duration(seconds: 2),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                BannerArrowDown(),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
