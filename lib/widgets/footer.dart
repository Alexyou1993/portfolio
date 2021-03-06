import 'package:flutter/material.dart';

class Footer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Made with Flutter ',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey[300]),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.favorite_outlined,
                  color: Colors.red,
                ),
              ],
            ),
            SizedBox(height: 48),
            Text(
              '#SPREADJOY',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
