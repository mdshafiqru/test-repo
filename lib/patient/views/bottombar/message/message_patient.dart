import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'package:pro_health/patient/views/drawer/custom_drawer_patient.dart';
import 'chat_screen.dart';

class MessagePatient extends StatefulWidget {
  static String tag = 'MessagePatient';
  @override
  MessagePatientState createState() => new MessagePatientState();
}

class MessagePatientState extends State<MessagePatient> {
  List<ChatList> chatList = [
    ChatList(
        name: "Sohail Mahmud",
        lastMessage: "Hey whats up",
        userimage:
            "https://avatars.githubusercontent.com/u/46453392?s=460&u=f70020aeb9d5cbd0cbded2f162852c06ad7d72a7&v=4",
        time: "Now",
        noOfMessage: '3'),
    ChatList(
        name: "Jahidul Hasan",
        lastMessage: "How are you?",
        userimage:
            "https://avatars.githubusercontent.com/u/39805770?s=400&u=3c9d96d0415af804ca77c0a2dce2c0d3460f058e&v=4",
        time: "3 hrs ago",
        noOfMessage: '1'),
    ChatList(
        name: "Mohd Sami",
        lastMessage: "I  am your bug fan",
        userimage:
            "https://ficquotes.com/images/characters/bruce-banner-avengers.jpg",
        time: "08.23",
        noOfMessage: '2'),
    ChatList(
        name: "Kamrul Islam",
        lastMessage: "I want to learn flutter. ",
        userimage:
            "https://www.hindustantimes.com/rf/image_size_444x250/HT/p2/2020/06/05/Pictures/_d1034a7e-a715-11ea-b9e4-8ce809f9739c.jpg",
        time: "yesterday",
        noOfMessage: '0'),
    ChatList(
        name: "Jakir Ullah",
        lastMessage: "Hey Joan, How do you do?",
        userimage:
            "https://static2.srcdn.com/wordpress/wp-content/uploads/2019/08/Tony-Stark-and-Bruce-Banner-in-The-Avengers-1.jpg?q=50&fit=crop&w=960&h=500",
        time: "yesterday",
        noOfMessage: '0'),
    ChatList(
        name: "Tonmoy Datta",
        lastMessage: "Flutter Demo",
        userimage:
            "https://img1.looper.com/img/gallery/the-avenger-who-could-have-singlehandedly-defeated-thanos/intro-1564425786.jpg",
        time: "yesterday",
        noOfMessage: '4'),
    ChatList(
        name: "Rajesh Das",
        lastMessage: "Love you",
        userimage:
            "https://i.insider.com/57bf2e72b6fa0217008b4611?width=1100&format=jpeg&auto=webp",
        time: "08/01/2019",
        noOfMessage: '0'),
    ChatList(
        name: "Dilip Dey",
        lastMessage: "Hello What is your name",
        userimage:
            "https://images.theconversation.com/files/120476/original/image-20160428-30950-6acgv9.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop",
        time: "08/01/2019",
        noOfMessage: '0'),
    ChatList(
        name: "Ripon Hawlader",
        lastMessage: "Job offer",
        userimage:
            "https://i.insider.com/5dcecef7e94e86049649291a?width=1136&format=jpeg",
        time: "03/12/2019",
        noOfMessage: '0'),
    ChatList(
        name: "Labib Mahir",
        lastMessage: "Most Dislikes",
        userimage:
            "https://pyxis.nymag.com/v1/imgs/44e/581/197dacaf206831fdb5223da62b58cc3a38-30-avengers-characters.rsquare.w700.jpg",
        time: "23/3/2019",
        noOfMessage: '7'),
    ChatList(
        name: "Al Amin",
        lastMessage: "Trending Tweet",
        userimage:
            "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp",
        time: "02/02/2012",
        noOfMessage: '0'),
  ];
  @override
  Widget build(BuildContext context) {
    final messageLogo = Container(
      padding: EdgeInsets.only(top: 2),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 35.0,
          child: Image.asset('assets/icons/patient/messagepage.png'),
        ),
      ),
    );

    final messageTitle = Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        'Message',
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
    final searchMessage = Container(
      height: 60,
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.only(left: 30, top: 25, right: 30, bottom: 0),
        child: TextFormField(
          keyboardType: TextInputType.text,
          autofocus: false,
          initialValue: '',
          style:
              TextStyle(fontFamily: "Segoe", fontSize: 18, color: Colors.black),
          autocorrect: true,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Search',
            hintStyle: TextStyle(
                fontFamily: 'Segoe', fontSize: 20, fontWeight: FontWeight.w500),
            contentPadding: EdgeInsets.fromLTRB(20.0, 2.0, 20.0, 2.0),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
            prefixIcon: Container(
              child: Icon(
                Icons.search_rounded,
                size: 26,
              ),
            ),
          ),
        ),
      ),
    );
    final messageHome = Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemCount: chatList.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16, bottom: 20),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  child: ChatWidget(
                    chat: chatList[index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
    return Scaffold(
      drawer: CustomDrawerPatient(),
      appBar: AppBar(
        elevation: 2.0,
        centerTitle: true,
        backgroundColor: kBaseColor,
        shadowColor: Colors.teal,
        iconTheme: IconThemeData(color: kTitleColor),
        toolbarHeight: 50,
        title: Text(
          'Message',
          style:
              TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          children: <Widget>[
            messageLogo,
            messageTitle,
            verticalDivider,
            searchMessage,
            Expanded(child: messageHome),
          ],
        ),
      ),
    );
  }
}
