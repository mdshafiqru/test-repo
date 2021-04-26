import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:pro_health/doctor/views/drawer/custom_drawer_doctor.dart';

class PharmaUpdates extends StatefulWidget {
  static String tag = 'PharmaUpdates';
  @override
  PharmaUpdatesState createState() => new PharmaUpdatesState();
}

class PharmaUpdatesState extends State<PharmaUpdates> {
  @override
  Widget build(BuildContext context) {
    final pharmaUpdateLogo = Container(
      padding: EdgeInsets.only(top: 2),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35.0,
          child: Image.asset('assets/pharmaupdate.png'),
        ),
      ),
    );

    final pharmaUpdatesTitle = Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'Pharma Updates',
        style: TextStyle(
            fontFamily: 'Segoe',
            color: kTextLightColor,
            letterSpacing: 0.5,
            fontSize: 18,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
      ),
    );

    final verticalDivider = Container(
      child: Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.5,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );

    final pharmaNewsImageTitle1 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 2.0, right: 10.0),
      child: Text(
        'OPEN PLEDGE TO FIGHT COVID-19',
        style: TextStyle(
            fontFamily: 'Nunito-Bold',
            color: kBaseColor,
            letterSpacing: 0.5,
            fontSize: 16,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.left,
      ),
    );
    final verticalTitleDivider = Container(
      child: Divider(
        color: kBaseColor,
        height: 2.0,
        thickness: 1.0,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );

    final pharmaNewsImage1 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pharmawidthimage.png'),
              fit: BoxFit.fill),
        ),
      ),
    );

    final pharmaNewsImageTitle2 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 2.0, right: 10.0),
      child: Text(
        'OPEN PLEDGE TO FIGHT COVID-19',
        style: TextStyle(
            fontFamily: 'Nunito-Bold',
            color: kBaseColor,
            letterSpacing: 0.5,
            fontSize: 16,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.left,
      ),
    );

    final pharmaNewsImage2 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pharmawidthimage.png'),
              fit: BoxFit.fill),
        ),
      ),
    );

    final newBrandImageTitle1 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 2.0, right: 10.0),
      child: Text(
        'NEW BRANDS IN BANGLADESH 2021',
        style: TextStyle(
            fontFamily: 'Nunito-Bold',
            color: kBaseColor,
            letterSpacing: 0.5,
            fontSize: 16,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.left,
      ),
    );
    final newBrandImage1 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/brandwidthimage.png'),
              fit: BoxFit.fill),
        ),
      ),
    );

    final newBrandImageTitle2 = Container(
      padding: EdgeInsets.only(left: 20.0, top: 15.0, bottom: 2.0, right: 10.0),
      child: Text(
        'NEW BRANDS IN BANGLADESH 2021',
        style: TextStyle(
            fontFamily: 'Nunito-Bold',
            color: kBaseColor,
            letterSpacing: 0.5,
            fontSize: 16,
            fontWeight: FontWeight.w600),
        textAlign: TextAlign.left,
      ),
    );
    final newBrandImage2 = Container(
      height: 200,
      padding: EdgeInsets.only(left: 0.0, top: 5.0, right: 0.0, bottom: 0.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/brandwidthimage.png'),
              fit: BoxFit.fill),
        ),
      ),
    );

    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: CustomDrawerDoctor(),
          appBar: AppBar(
            elevation: 2.0,
            backgroundColor: kBaseColor,
            iconTheme: IconThemeData(color: kTitleColor),
            centerTitle: true,
            toolbarHeight: 50,
            title: Text('Pharma Updates',
                style: TextStyle(
                    fontFamily: 'Segoe', fontSize: 18, color: kTitleColor)),
          ),
          backgroundColor: kBackgroundColor,
          body: Center(
            child: Column(
              children: [
                pharmaUpdateLogo,
                pharmaUpdatesTitle,
                verticalDivider,
                SizedBox(
                  height: 10,
                ),
                Theme(
                  data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: Container(
                    height: 35,
                    child: TabBar(
                      unselectedLabelColor: kBaseColor,
                      labelColor: kTitleColor,
                      indicatorColor: kBaseColor,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          gradient:
                              LinearGradient(colors: [kBaseColor, kBaseColor]),
                          borderRadius: BorderRadius.circular(30),
                          color: kBaseColor),
                      tabs: [
                        Tab(
                          child: Container(
                            width: 205,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(color: kBaseColor, width: 1.0)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Pharma News",
                                style: TextStyle(
                                    fontFamily: 'Segoe', fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 205,
                            height: 34,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(color: kBaseColor, width: 1.0)),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "New Brand",
                                style: TextStyle(
                                    fontFamily: 'Segoe', fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Container(
                        color: kBackgroundColor,
                        child: ListView(
                          children: [
                            pharmaNewsImageTitle1,
                            verticalTitleDivider,
                            pharmaNewsImage1,
                            pharmaNewsImageTitle2,
                            verticalTitleDivider,
                            pharmaNewsImage2,
                            pharmaNewsImageTitle2,
                            verticalTitleDivider,
                            pharmaNewsImage2,
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: kBackgroundColor,
                        child: ListView(
                          children: [
                            newBrandImageTitle1,
                            verticalTitleDivider,
                            newBrandImage1,
                            newBrandImageTitle2,
                            verticalTitleDivider,
                            newBrandImage2,
                            newBrandImageTitle2,
                            verticalTitleDivider,
                            newBrandImage2,
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
