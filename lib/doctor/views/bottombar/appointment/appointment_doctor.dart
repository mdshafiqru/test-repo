import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pro_health/doctor/views/drawer/AboutUs.dart';
import 'package:pro_health/doctor/views/drawer/ActivityStatus.dart';
import 'package:pro_health/doctor/views/drawer/ContactUs.dart';
import 'package:pro_health/doctor/views/drawer/Help.dart';
import 'package:pro_health/doctor/views/drawer/PrivacyAndPolicy.dart';
import 'package:pro_health/doctor/views/drawer/Reviews.dart';
import 'package:pro_health/doctor/views/drawer/Settings.dart';
import 'package:pro_health/doctor/views/drawer/TermsConditions.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'file:///D:/extreme-sm/project/pro-health/lib/doctor/views/dashboard/dashboard_doctor.dart';
import 'package:pro_health/doctor/views/auth/signin/signin_doctor.dart';
import '../profile/profile_doctor.dart';
import 'chat/ChatScreen.dart';


const String _AccountName = 'Prof. Mohammed Hanif';
const String _AccountEmail = 'doctor101@prohealth.com';

class Appointment extends StatefulWidget {
  static String tag = 'Appointment';
  @override
  AppointmentState createState() => new AppointmentState();
}

class AppointmentState extends State<Appointment> {
  List<ChatList> chatList = [
    ChatList(name: "Sohail Mahmud", lastMessage: "Hey whats up", userimage: "https://avatars.githubusercontent.com/u/46453392?s=460&u=f70020aeb9d5cbd0cbded2f162852c06ad7d72a7&v=4", time:  "Now", noOfMessage: '3'),
    ChatList(name: "Jahidul Hasan", lastMessage: "How are you?", userimage: "https://avatars.githubusercontent.com/u/39805770?s=400&u=3c9d96d0415af804ca77c0a2dce2c0d3460f058e&v=4", time:  "3 hrs ago", noOfMessage: '1'),
    ChatList(name: "Mohd Sami", lastMessage: "I  am your bug fan", userimage: "https://ficquotes.com/images/characters/bruce-banner-avengers.jpg", time:  "08.23", noOfMessage: '2'),
    ChatList(name: "Kamrul Islam", lastMessage: "I want to learn flutter. ", userimage: "https://www.hindustantimes.com/rf/image_size_444x250/HT/p2/2020/06/05/Pictures/_d1034a7e-a715-11ea-b9e4-8ce809f9739c.jpg", time:  "yesterday", noOfMessage: '0'),
    ChatList(name: "Jakir Ullah", lastMessage: "Hey Joan, How do you do?", userimage: "https://static2.srcdn.com/wordpress/wp-content/uploads/2019/08/Tony-Stark-and-Bruce-Banner-in-The-Avengers-1.jpg?q=50&fit=crop&w=960&h=500", time:  "yesterday", noOfMessage: '0'),
    ChatList(name: "Tonmoy Datta", lastMessage: "Flutter Demo", userimage: "https://img1.looper.com/img/gallery/the-avenger-who-could-have-singlehandedly-defeated-thanos/intro-1564425786.jpg", time:  "yesterday", noOfMessage: '4'),
    ChatList(name: "Rajesh Das", lastMessage: "Love you", userimage: "https://i.insider.com/57bf2e72b6fa0217008b4611?width=1100&format=jpeg&auto=webp", time:  "08/01/2019", noOfMessage: '0'),
    ChatList(name: "Dilip Dey", lastMessage: "Hello What is your name", userimage: "https://images.theconversation.com/files/120476/original/image-20160428-30950-6acgv9.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop", time:  "08/01/2019", noOfMessage: '0'),
    ChatList(name: "Ripon Hawlader", lastMessage: "Job offer", userimage: "https://i.insider.com/5dcecef7e94e86049649291a?width=1136&format=jpeg", time:  "03/12/2019", noOfMessage: '0'),
    ChatList(name: "Labib Mahir", lastMessage: "Most Dislikes", userimage: "https://pyxis.nymag.com/v1/imgs/44e/581/197dacaf206831fdb5223da62b58cc3a38-30-avengers-characters.rsquare.w700.jpg", time:  "23/3/2019", noOfMessage: '7'),
    ChatList(name: "Al Amin", lastMessage: "Trending Tweet", userimage: "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp", time:  "02/02/2012", noOfMessage: '0'),
  ];

  @override
  Widget build(BuildContext context) {

    final drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: false,
        children: <Widget>[
          Container(
            height: 175,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kBaseColor,
              ),
              accountName: const Text(_AccountName, style: TextStyle(fontFamily: 'Segoe', fontSize: 16),),
              accountEmail: const Text(_AccountEmail, style: TextStyle(fontFamily: 'Segoe', fontSize: 13),),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundColor: kBaseColor,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: kTitleColor,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 25.0,
                    child: Image.asset('assets/doctorimg.png'),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: kBackgroundColor,
            child: Column(children: <Widget>[
              ListTile(
                dense: true,
                title: Text("Home", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/homed.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(DashboardDoctor.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Profile", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700)),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/profiled.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(ProfileDoctor.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Active Status", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/statusd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(ActivityStatus.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Terms and Conditions", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/termsd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(TermsConditions.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Privacy and Policy", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/privacyd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(PrivacyAndPolicy.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("About Us", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/aboutd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(AboutUs.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Contact Us", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/contactd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(ContactUs.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Help", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/helpd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(Help.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Settings", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/settingsd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(Settings.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Version v-0.0.1", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/versiond.png'),
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, "");
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Sign Out", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/signoutd.png'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(SignInDoctor.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: true,
                title: Text("Renew", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/renewd.png'),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('');
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
              ListTile(
                dense: false,
                title: Text("Reviews", style: TextStyle(color: kBaseColor, fontFamily: 'Segoe', fontSize: 16, letterSpacing: 0.6, fontWeight: FontWeight.w700),),
                leading: CircleAvatar(
                  backgroundColor: kShadowColor,
                  radius: 13,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 12.0,
                    child: Image.asset('assets/reviewsd.png'),
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed(Reviews.tag);
                },
              ),
              Divider(height: 0.0, thickness: 0.5, indent: 18.0, endIndent: 0.0, color: kTitleTextColor),
            ],),
          ),
        ],
      ),
    );

    final appointmentLogo = Container(
      padding: EdgeInsets.only(top: 2),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35.0,
          child: Image.asset('assets/appointments.png'),
        ),
      ),
    );

    final appointmentTitle = Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text('Appointment',
        style: TextStyle(fontFamily: 'Segoe', color: kTextLightColor, letterSpacing: 0.5, fontSize: 18, fontWeight: FontWeight.w600), textAlign: TextAlign.center,
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

    // Appointment Tab

    final topCard = Card(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Column(
          children: [
            Container(
              height: 65,
              color: kCardTitleColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 12.0, top: 10.0),
                    child: Text('Appointment Request', style: TextStyle(fontSize: 16, color: kBodyTextColor),),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Icon(Icons.access_time, size: 20, color: kBodyTextColor),
                        SizedBox(width: 2.0,),
                        Text('21 Feb 2021, 6:00 PM', style: TextStyle(fontSize: 16, color: kBodyTextColor),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, right: 10),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: kBaseColor,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 17.0,
                        child: Image.asset('assets/doctorimg.png'),
                      ),
                    ),
                  ),
                  Container(
                    child: Text('MD Jahidul Hasan', style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 70),
              child: Container(
                height: 30,
                width: 220,
                decoration: BoxDecoration(
                    color: kTitleColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30)),
                alignment: Alignment.center,
                child: new Text(
                  "Problem: ৩দিন যাবত জ্বর",
                  style: TextStyle(fontFamily: 'Segoe', letterSpacing: 0.5, fontSize: 16,),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(
              height: 60,
              child: Row(
                children: [
                  Container(
                    width: 185,
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    child: MaterialButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('');
                      },
                      padding: EdgeInsets.only(top: 2.0, bottom: 3.0),
                      color: kButtonColor,
                      child: Text('Accept', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 16, color: kWhiteShadow)),
                    ),
                  ),
                  Container(
                    width: 185,
                    padding: EdgeInsets.only(left: 30.0, right: 10.0),
                    child: MaterialButton(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(
                            color: kBaseColor,
                            width: 0.8,
                            style: BorderStyle.solid
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('');
                      },
                      padding: EdgeInsets.only(top: 2.0, bottom: 3.0),
                      color: kWhiteShadow,
                      child: Text('Decline', style: TextStyle(fontFamily: "Segoe", letterSpacing: 0.5, fontSize: 16, color: kBaseColor)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    final nextAppointmentTitle = Container(
      padding: EdgeInsets.only(left: 20.0, top: 5.0, right: 20.0, bottom: 10.0),
      child: Text('Next Appointments', style: TextStyle(fontSize: 20, color: kTextLightColor),),
    );
    final patientsCard = Container(
      height: 60,
      width: 395,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, right: 10),
            child: CircleAvatar(
              radius: 19,
              backgroundColor: kBaseColor,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18.0,
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
                  child: Text('21 Feb 2021, 6:00 PM', style: TextStyle(fontSize: 14),),
                )
              ],
            ),
          ),
          SizedBox(width: 75,),
          Container(
              child: RawMaterialButton(
                onPressed: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 24,
                ),
                padding: EdgeInsets.all(8),
                shape: CircleBorder(),
              )
          ),
        ],
      ),
    );
    final awaitedPatients = Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 10,),
          patientsCard,
          SizedBox(height: 30,),
        ],
      ),
    );

    // Message Tab

    final messageHome = Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              padding: EdgeInsets.only(left: 30, top: 25, right: 30, bottom: 5),
              child: TextFormField(
                keyboardType: TextInputType.text,
                autofocus: false,
                initialValue: '',
                style: TextStyle(fontFamily:"Segoe", fontSize: 18, color: Colors.black),
                autocorrect: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Search',
                  hintStyle: TextStyle(fontFamily: 'Segoe', fontSize: 20, fontWeight: FontWeight.w500),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  prefixIcon: Container(
                    child: Icon(Icons.search_rounded, size: 26,),
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatList.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16, bottom: 20),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Container(
                  child: ChatWidget(chat: chatList[index],),
                );
              },
            ),
          ],
        ),
      ),
    );

    return Material(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: drawer,
          appBar: AppBar(
            elevation: 2.0,
            backgroundColor: kBaseColor,
            iconTheme: IconThemeData(color: kTitleColor),
            shadowColor: Colors.teal,
            centerTitle: true,
            toolbarHeight: 50,
            title: Text('Appointment', style: TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor)),
          ),
          backgroundColor: kBackgroundColor,
          body: Center(
            child: Column(
              children: [
                appointmentLogo,
                appointmentTitle,
                verticalDivider,
                SizedBox(height: 10,),
                TabBar(
                  unselectedLabelColor: kBaseColor,
                  labelColor: kTitleColor,
                  indicatorColor: kBaseColor,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [kBaseColor, kBaseColor]),
                      borderRadius: BorderRadius.circular(50),
                      color: kBaseColor),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 205,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: kBaseColor, width: 1.0)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Appointment", style: TextStyle(fontFamily: 'Segoe', fontSize: 16,),),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 205,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: kBaseColor, width: 1.0)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Message", style: TextStyle(fontFamily: 'Segoe', fontSize: 16,),),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      Container(
                        child: ListView(
                          children: [
                            topCard,
                            nextAppointmentTitle,
                            awaitedPatients,
                          ],
                        ),
                      ),
                      Container(
                        child: ListView(
                          children: [
                            messageHome,
                          ],
                        ),
                      )
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