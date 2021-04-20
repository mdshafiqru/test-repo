import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class CaseExchange extends StatefulWidget {
  static String tag = 'CaseExchange';
  @override
  CaseExchangeState createState() => new CaseExchangeState();
}

class CaseExchangeState extends State<CaseExchange> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 5.0,
      backgroundColor: kBaseColor,
      centerTitle: true,
      toolbarHeight: 50,
      leading: IconButton(
        color: kTitleColor,
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back),
      ),
      title: Text('Case Exchange',
          style:
              TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor)),
      actions: <Widget>[
        SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 50,
          width: 35,
          child: Container(
            padding: EdgeInsets.only(left: 0.0, right: 10.0),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.more_vert_rounded),
              color: kTitleColor,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
    final writeNewCase = Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: MaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
        color: kBaseColor,
        child: Text('Write Your Case Here!',
            style: TextStyle(
                fontFamily: "Segoe",
                letterSpacing: 0.5,
                fontSize: 15,
                color: kTitleColor,
                fontWeight: FontWeight.w700)),
      ),
    );
    final categoryTotalLabel = Container(
      padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 35,
                padding: EdgeInsets.only(left: 5),
                child: DropdownButtonFormField(
                  decoration: new InputDecoration(
                    hintText: "All",
                    contentPadding: EdgeInsets.fromLTRB(15.0, 2.0, 5.0, 0.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem<int>(
                      value: 1,
                      child: Text("All"),
                    ),
                    DropdownMenuItem<int>(
                      value: 2,
                      child: Text("Pediatrician"),
                    ),
                  ],
                  onChanged: (val) => print(val),
                  onSaved: (val) => print(val),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 5),
                child: Text(
                  '(1,000) case found',
                  style: TextStyle(
                      fontFamily: 'Segoe',
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    final verticalDivider = Container(
      child: const Divider(
        color: Colors.black,
        height: 0.0,
        thickness: 0.5,
        indent: 0.0,
        endIndent: 0.0,
      ),
    );
    final doctorCaseCard = Container(
      padding: EdgeInsets.only(left: 8, top: 10, right: 8, bottom: 10),
      child: Card(
        margin: EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 0.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Column(
            children: [
              Container(
                height: 90,
                color: kCardTitleColor,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, top: 2, right: 10, bottom: 4),
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: kBaseColor,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15.0,
                                child: Image.asset('assets/doctorimg.png'),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Prof. Mohammed Hanif',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Segoe',
                                        fontWeight: FontWeight.bold,
                                        color: kBaseColor),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'MBBS, FCPS, FRCP (Edin)',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Segoe',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 115),
                          Container(
                            width: 30,
                            height: 60,
                            padding: EdgeInsets.only(top: 15),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              icon: Icon(
                                Icons.more_vert_rounded,
                                size: 28,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      padding: EdgeInsets.only(bottom: 3),
                      child: Row(
                        children: [
                          Container(
                            width: 140,
                            child: Row(
                              children: [
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Icons.category_outlined,
                                    color: kButtonColor,
                                    size: 18,
                                  ),
                                  onPressed: () {},
                                ),
                                Text(
                                  'Pediatrician',
                                  style: TextStyle(
                                    fontFamily: 'Segoe',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 70.0, top: 10),
                            child: Row(
                              children: [
                                Icon(Icons.access_time,
                                    size: 16, color: kBodyTextColor),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Text(
                                  '21 Feb 2021, 6:00 PM',
                                  style: TextStyle(
                                      fontSize: 12, color: kBodyTextColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Row(
                  children: [
                    Container(
                      height: 28,
                      child: VerticalDivider(
                        color: Colors.black54,
                        thickness: 1.8,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Corona virus (Covid-19) Guide for parents',
                        style: TextStyle(
                          fontFamily: 'Nunita',
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: kButtonColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Expanded(
                  child: Text(
                    'Coronavirus (COVID-19) guide for parents. What you need to '
                    'know to keep your loved ones safe. As a parent, you want to '
                    'do everything you can to protect your ...',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'Segoe', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, top: 0.0, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Container(
                      width: 166,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/icons/doctor/covid19.png'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 166,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/icons/doctor/covid19.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black,
                height: 0.0,
                thickness: 1,
                indent: 0.0,
                endIndent: 0.0,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 20, top: 5, right: 10, bottom: 5),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.white,
                              elevation: 0,
                              child: Icon(Icons.favorite_border_rounded),
                            ),
                          ),
                          Container(
                            child: Text(
                              '3.5k',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 80),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: FloatingActionButton(
                              onPressed: () {},
                              backgroundColor: Colors.white,
                              elevation: 0,
                              child: Icon(Icons.mode_comment_outlined),
                            ),
                          ),
                          Container(
                            child: Text(
                              '3.5k',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 80),
                    Container(
                      width: 30,
                      height: 30,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.white,
                        elevation: 0,
                        child: Icon(Icons.share_rounded),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          children: [
            writeNewCase,
            categoryTotalLabel,
            verticalDivider,
            doctorCaseCard,
          ],
        ),
      ),
    );
  }
}
