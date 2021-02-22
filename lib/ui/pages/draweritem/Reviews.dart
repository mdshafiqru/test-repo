import 'package:flutter/material.dart';
import 'package:pro_health/ui/utilities/Constant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Reviews extends StatefulWidget {
  Reviews({Key key, this.title}) : super(key: key);
  final String title;
  static String tag = 'Reviews';
  @override
  ReviewsState createState() => new ReviewsState();
}

class ReviewsState extends State<Reviews> {
  var rating = 5.0;

  @override
  Widget build(BuildContext context) {

    final newAccountPasswordLogo = Container(
      padding: EdgeInsets.only(top: 20),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: Image.asset('assets/reviewspage.png'),
        ),
      ),
    );

    final forgotPasswordTitle = Container(
      //height: 35,
      padding: EdgeInsets.only(bottom: 5),
      child: Text('Reviews',
        style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 20, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
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

    final totalReviewsAndRatings = Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30.0, top: 30.0, right: 20.0, bottom: 10.0),
            child: Text('Reviews (100)', style: TextStyle(fontFamily: 'Segoe', fontSize: 16, color: kTextLightColor, fontWeight: FontWeight.w500),),
          ),
          SizedBox(width: 140,),
          Container(
            padding: EdgeInsets.only(left: 20.0, top: 30.0, right: 20.0, bottom: 10.0),
            child: Text('Ratings (5.0)', style: TextStyle(fontFamily: 'Segoe', fontSize: 16, color: kTextLightColor, fontWeight: FontWeight.w500),),
          )
        ],
      ),
    );
    final singleReview = Container(
      height: 75,
      width: 395,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 15, top: 8, right: 10),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: kBaseColor,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 19.0,
                            child: Image.asset('assets/doctorimg.png'),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text('MD Jahidul Hasan', style: TextStyle(fontSize: 16),),
                            ),
                            Container(
                              child: Text('21 Feb 2021, 6:00 PM', style: TextStyle(fontSize: 13),),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text('Very good, I am impressed.', style: TextStyle(fontSize: 16),),
                ),
              ],
            ),
          ),
          SizedBox(width: 60,),
          Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0, bottom: 2.0),
                    child: Text('5.0', style: TextStyle(fontFamily: 'Segoe', fontSize: 16, fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    child: SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {
                        },
                        starCount: 5,
                        rating: rating,
                        size: 18.0,
                        isReadOnly:true,
                        filledIconData: Icons.star,
                        //halfFilledIconData: Icons.star_half,
                        color: Colors.amber,
                        borderColor: Colors.amber,
                        spacing:0.0
                    ),
                  ),
                ],
              ),
          ),
        ],
      ),
    );
    final reviewsList = Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 10,),
          singleReview,
          SizedBox(height: 30,),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: kBaseColor,
        centerTitle: true,
        toolbarHeight: 50,
        leading: IconButton(
          color: kTitleColor,
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Reviews', style: TextStyle(fontFamily:'Segoe', color: kTitleColor)),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: ListView(
          shrinkWrap: false,
          children: <Widget>[
            newAccountPasswordLogo,
            forgotPasswordTitle,
            verticalDivider,
            totalReviewsAndRatings,
            reviewsList,
          ],
        ),
      ),
    );
  }
}