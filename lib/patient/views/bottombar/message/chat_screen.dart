import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:pro_health/base/utils/constants.dart';
import 'global.dart';
import 'widgets.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key key, this.chatList}) : super(key: key);

  ChatList chatList;

  @override
  Widget build(BuildContext context) {
    return ChatScrenpage(
      chatList: chatList,
    );
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
  File myImage;
  Future openCamera() async {
    // ignore: deprecated_member_use
    var cameraImage = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      myImage = cameraImage;
    });
  }

  List<Asset> images = <Asset>[];
  @override
  void initState() {
    super.initState();
  }

  Future<void> addPhotos() async {
    List<Asset> resultList = <Asset>[];
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 10,
        enableCamera: true,
        selectedAssets: images,
        materialOptions: MaterialOptions(
          statusBarColor: "#01619B",
          actionBarColor: "#01619B",
          actionBarTitle: "All Photos",
          allViewTitle: "Selected Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#01619B",
        ),
      );
    } on Exception {}
    if (!mounted) return;
    setState(() {
      images = resultList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
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
                SizedBox(
                  width: 55,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(widget.chatList.userimage),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.chatList.name,
                        style: TextStyle(
                            color: kTitleColor, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        actions: [
          Container(
            width: 40,
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              padding: EdgeInsets.all(1),
              icon: Icon(Icons.videocam_rounded),
              color: Colors.grey[200],
              onPressed: () {},
            ),
          ),
          Container(
            width: 40,
            height: 40,
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              padding: EdgeInsets.all(1),
              icon: Icon(Icons.more_vert),
              color: Colors.grey[200],
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: messages.length,
              itemBuilder: (ctx, i) {
                if (messages[i]['status'] == MessageType.received) {
                  return ReceivedMessagesWidget(i: i);
                } else {
                  return SentMessageWidget(i: i);
                }
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 60,
              padding: EdgeInsets.only(left: 10, top: 8, bottom: 8, right: 8),
              width: double.infinity,
              color: kTitleColor,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Write a message",
                        hintStyle: TextStyle(
                          fontFamily: 'Segoe',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(20.0, 2.0, 20.0, 2.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        suffixIcon: Container(
                          height: 30,
                          width: 30,
                          padding: EdgeInsets.all(5),
                          child: FloatingActionButton(
                            onPressed: () {
                              addPhotos();
                            },
                            child: Icon(
                              Icons.attach_file_rounded,
                              color: Colors.grey[800],
                              size: 25,
                            ),
                            backgroundColor: Colors.white,
                            elevation: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 50,
                    padding: EdgeInsets.all(3),
                    child: FloatingActionButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {
                        openCamera();
                      },
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey[800],
                        size: 25,
                      ),
                      backgroundColor: kTitleColor,
                      elevation: 0,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    padding: EdgeInsets.all(1),
                    child: Center(
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.send,
                          color: Colors.grey[800],
                          size: 25,
                        ),
                        backgroundColor: kTitleColor,
                        elevation: 1,
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

class ChatMessage {
  String message;
  bool reciever;
  ChatMessage({this.message, this.reciever});
}

class ChatList {
  String name;
  String lastMessage;
  String userimage;
  String time;
  String noOfMessage;

  ChatList(
      {this.name,
      this.lastMessage,
      this.userimage,
      this.time,
      this.noOfMessage});
}

class MessageWidget extends StatelessWidget {
  MessageWidget({Key key, this.chatMessage}) : super(key: key);
  ChatMessage chatMessage;
  @override
  Widget build(BuildContext context) {
    return MessageWidgetPage(
      chatMessage: chatMessage,
    );
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
          alignment: (!widget.chatMessage.reciever
              ? Alignment.topLeft
              : Alignment.topRight),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: (widget.chatMessage.reciever
                  ? Colors.lightBlue[600]
                  : Colors.cyan[50]),
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
  ChatWidget({Key key, this.chat}) : super(key: key);

  ChatList chat;
  @override
  Widget build(BuildContext context) {
    return ChatWidgetPage(
      chat: chat,
    );
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
  double radius = 32;
  double iconSize = 20;
  double distance = 2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatScreen(
            chatList: widget.chat,
          );
        }));
      },
      child: Container(
        child: Center(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: kBodyTextColor,
                            child: CircleAvatar(
                              backgroundColor: kWhiteShade,
                              radius: 31,
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    NetworkImage(widget.chat.userimage),
                                maxRadius: 30,
                              ),
                            ),
                          ),
                          Positioned(
                            top: -(radius + 5),
                            right: -(radius + 15),
                            bottom: -iconSize - distance - 50,
                            left: 5,
                            child: Icon(
                              Icons.circle,
                              color: Color(0xff6ECEC0),
                              size: iconSize - 4,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.chat.name,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.chat.lastMessage,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade500),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    '.',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade500),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    widget.chat.time,
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      widget.chat.noOfMessage == "0"
                          ? SizedBox.shrink()
                          : Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue[900],
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Text(
                                widget.chat.noOfMessage,
                                style: TextStyle(color: Colors.white),
                              )),
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
