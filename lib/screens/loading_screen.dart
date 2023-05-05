import 'package:flutter/material.dart';
import 'package:nexo/screens/contact_screens.dart';
import 'contact_screens.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nexo/networking/apiget.dart';
import 'package:nexo/networking/data.dart';
import 'person_screen.dart';

class LoadingScreens extends StatefulWidget {
  @override
  State<LoadingScreens> createState() => _LoadingScreensState();
}

class _LoadingScreensState extends State<LoadingScreens> {
  @override
  void initState() {
    super.initState();
    getApiData();
  }

  void screenchange() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return ContactScreens();
        },
      ),
    );
  }

  void getApiData() async {
    // await Future.delayed(Duration(seconds: 10));
    await Networking().getdata();
    await Readingdata().readdata();

    screenchange();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
