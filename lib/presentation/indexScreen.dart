import 'package:flutter/material.dart';
import 'package:portfolio/widget_barrel.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:portfolio/widgets/aboutMe.dart';
import 'package:portfolio/widgets/banner.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/education.dart';
import 'package:portfolio/widgets/experience.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/projects.dart';
import 'package:portfolio/widgets/socialSkills.dart';
import 'package:portfolio/widgets/title_name.dart';

class IndexScreen extends StatefulWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PrimaryScrollController(
        controller: scrollController,
        child: Scrollbar(
          child: CustomScrollView(
            cacheExtent: MediaQuery.of(context).size.height * 0.5,
            slivers: <Widget>[
              SliverAppBar(
                floating: false,
                pinned: true,
                snap: false,
                title: TitleName(),
                backgroundColor: Colors.white30,
                flexibleSpace: BannerBackground(),
                expandedHeight: MediaQuery.of(context).size.height,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: 24.0,
                    ),
                    AboutMe(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    SocialSkills(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ],
                ),
              ),
              Education(),
              Experience(),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Projects(),
                    Contact(),
                    Footer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
