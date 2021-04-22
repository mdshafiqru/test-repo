import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:pro_health/base/utils/constants.dart';

class CreateCase extends StatefulWidget {
  static String tag = 'CreateCase';
  @override
  CreateCaseState createState() => new CreateCaseState();
}

class CreateCaseState extends State<CreateCase> {
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
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
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
      title: Text(
        'Create Case',
        style: TextStyle(fontFamily: 'Segoe', fontSize: 18, color: kTitleColor),
      ),
    );
    final categoryTotalLabel = Container(
      padding: EdgeInsets.only(left: 15, top: 20, right: 15, bottom: 10),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 5),
            child: Text(
              'Select Case Type:',
              style: TextStyle(
                  fontFamily: 'Segoe',
                  fontSize: 16,
                  color: kTextLightColor,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: 220,
            height: 35,
            padding: EdgeInsets.only(left: 5),
            child: DropdownButtonFormField(
              icon: Icon(Icons.keyboard_arrow_down_rounded),
              decoration: new InputDecoration(
                hintText: "All",
                contentPadding: EdgeInsets.fromLTRB(15.0, 2.0, 5.0, 0.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
              items: <DropdownMenuItem>[
                DropdownMenuItem<int>(
                  value: 1,
                  child: Text("Select One"),
                ),
                DropdownMenuItem<int>(
                  value: 2,
                  child: Text("Pediatrician"),
                ),
                DropdownMenuItem<int>(
                  value: 3,
                  child: Text("Gastroenterologist"),
                ),
                DropdownMenuItem<int>(
                  value: 4,
                  child: Text("Nephrologist"),
                ),
              ],
              onChanged: (val) => print(val),
              onSaved: (val) => print(val),
            ),
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
    final caseExchangeBody = Expanded(
      child: SingleChildScrollView(
        child: ListBody(
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Segoe',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  hintText: 'Heading...',
                  hintStyle: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Segoe',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Write Here...',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.bold,
                    color: kTextLightColor,
                  ),
                  isDense: true,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                maxLines: 18,
              ),
            ),
          ],
        ),
      ),
    );
    final casePublishBar = Container(
      height: 70,
      padding: EdgeInsets.only(left: 25, top: 10, right: 25, bottom: 20),
      color: kTitleColor,
      child: Row(
        children: [
          Container(
            height: 36,
            width: 36,
            padding: EdgeInsets.all(2),
            child: FloatingActionButton(
              backgroundColor: kTitleColor,
              elevation: 0,
              child: Image.asset('assets/icons/patient/addphotos.png'),
              onPressed: () {
                addPhotos();
              },
            ),
          ),
          SizedBox(width: 5),
          Container(
            height: 36,
            width: 36,
            padding: EdgeInsets.all(2),
            child: FloatingActionButton(
              backgroundColor: kTitleColor,
              elevation: 0,
              child: Image.asset('assets/icons/patient/camera.png'),
              onPressed: () {
                addPhotos();
              },
            ),
          ),
          SizedBox(width: 115),
          Container(
            height: 40,
            width: 150,
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushNamed('');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
              color: Colors.white,
              child: Text('Publish',
                  style: TextStyle(
                      fontFamily: "Segoe",
                      letterSpacing: 0.5,
                      fontSize: 15,
                      color: kBodyTextColor,
                      fontWeight: FontWeight.w700)),
            ),
          )
        ],
      ),
    );
    return Scaffold(
      appBar: appBar,
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          children: [
            categoryTotalLabel,
            verticalDivider,
            caseExchangeBody,
            casePublishBar,
          ],
        ),
      ),
    );
  }
}
