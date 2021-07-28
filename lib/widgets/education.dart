import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:portfolio/constants/app_constants.dart';
import 'package:portfolio/widget_barrel.dart';
import 'package:portfolio/widgets/resume_item.dart';
import 'package:portfolio/widgets/sticky_header.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader.builder(
      overlapsContent: true,
      sticky: true,
      builder: (BuildContext context,SliverStickyHeaderState state) => StickyHeader(
        headerName: 'Education',
        isPinned: state.isPinned,
      ),
      sliver: SliverList(
        delegate: SliverChildListDelegate(
          [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Visibility(
                    visible: MediaQuery.of(context).size.width > 768,
                    child: Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Education',
                          style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: kEducation.length,
                          itemBuilder: (context, int index) => ResumeItem(
                            iconData: Icons.school_rounded,
                            resume: kEducation[index],
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
