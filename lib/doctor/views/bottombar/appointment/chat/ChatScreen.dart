import 'package:flutter/material.dart';
import 'package:pro_health/base/utils/constants.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key key, this.chatList}) : super(key: key);

  ChatList chatList;

  @override
  Widget build(BuildContext context) {
    return ChatScrenpage(chatList: chatList,);
  }
}

class ChatScrenpage extends StatefulWidget {
  ChatScrenpage({Key key, this.title, this.chatList}) : super(key: key);

  final String title;
  ChatList chatList;

  @override
  _ChatScrenpageState createState() => _ChatScrenpageState();
}

class _ChatScrenpageState extends State<ChatScrenpage> {
  List<ChatMessage> chatMessage = [
    ChatMessage(message: "Hi", reciever: true),
    ChatMessage(message: "This is Louji", reciever: true),
    ChatMessage(message: "from tenkasi", reciever: true),
    ChatMessage(message: "Hey", reciever: false),
    ChatMessage(message: "What's up", reciever: false),
    ChatMessage(message: "I want to learn Mobile Development. ", reciever: true),
    ChatMessage(message: "Which is best framework", reciever: true),
    ChatMessage(message: "Upto me. Flutter will be good", reciever: false),

  ];
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          color: Colors.grey[200],
          icon: Icon(Icons.arrow_back),
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                SizedBox(width: 55,),
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.chatList.userimage),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(widget.chatList.name,style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w900),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.videocam_rounded, color: Colors.grey[200],),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.call, color: Colors.grey[200],),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert, color: Colors.grey[200],),
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatMessage.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10,bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return MessageWidget(
                chatMessage: chatMessage[index],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 16,bottom: 10),
              height: 60,
              width: double.infinity,
              color: Colors.grey[800],
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 21,),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Type message...",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    child: Center(
                      child: FloatingActionButton(
                        onPressed: (){},
                        child: Icon(Icons.send,color: Colors.white,size: 17,),
                        backgroundColor: kBaseColor,
                        elevation: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage{
  String message;
  bool reciever;
  ChatMessage({ this.message, this.reciever});
}
class ChatList{
  String name;
  String lastMessage;
  String userimage;
  String time;
  String noOfMessage;

  ChatList({this.name, this.lastMessage, this.userimage, this.time, this.noOfMessage});
}
class MessageWidget extends StatelessWidget {
  MessageWidget({Key key, this.chatMessage}) : super(key: key);
  ChatMessage chatMessage;
  @override
  Widget build(BuildContext context) {
    return MessageWidgetPage(chatMessage: chatMessage,);
  }
}

class MessageWidgetPage extends StatefulWidget {
  MessageWidgetPage({Key key, this.title, this.chatMessage}) : super(key: key);

  final String title;
  ChatMessage chatMessage;

  @override
  _MessageWidgetPageState createState() => _MessageWidgetPageState();
}

class _MessageWidgetPageState extends State<MessageWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Align(
          alignment: (!widget.chatMessage.reciever ? Alignment.topLeft : Alignment.topRight),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: (widget.chatMessage.reciever ? Colors.lightBlue[600] : Colors.cyan[50]),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(widget.chatMessage.message),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatWidget extends StatelessWidget {
  // This widget is the root of your application.
  ChatWidget({Key key, this.chat}) : super(key: key);

  ChatList chat;
  @override
  Widget build(BuildContext context) {
    return ChatWidgetPage(chat: chat,);
  }
}

class ChatWidgetPage extends StatefulWidget {
  ChatWidgetPage({Key key, this.title, this.chat}) : super(key: key);

  final String title;
  ChatList chat;

  @override
  _ChatWidgetPageState createState() => _ChatWidgetPageState();
}

class _ChatWidgetPageState extends State<ChatWidgetPage> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){ return ChatScreen(chatList: widget.chat,);}));
      },
      child: Container(
        child: Center(
          child:Container(
            padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(widget.chat.userimage),
                        maxRadius: 30,
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(widget.chat.name, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 18),),
                              SizedBox(height: 6,),
                              Row(
                                children: [
                                  Text(widget.chat.lastMessage,style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                                  SizedBox(width: 6,),
                                  Text('.', style: TextStyle(fontSize: 14,color: Colors.grey.shade500),),
                                  SizedBox(width: 6,),
                                  Text(widget.chat.time,style: TextStyle(fontSize: 12,color: Colors.grey.shade500),),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      widget.chat.noOfMessage=="0"?
                      SizedBox.shrink()
                          :
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue[900],
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(child: Text(widget.chat.noOfMessage, style: TextStyle(color: Colors.white),)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}