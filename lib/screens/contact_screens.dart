import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nexo/networking/data.dart';
import 'package:nexo/other/scrollglow.dart';
import 'person_screen.dart';

class ContactScreens extends StatefulWidget {
  @override
  State<ContactScreens> createState() => _ContactScreensState();
}

class _ContactScreensState extends State<ContactScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Text(
                    "Contacts",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontFamily: "JosefinSans",
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              flex: 10,
              child: ScrollConfiguration(
                behavior: MyBehavior(),
                child: ListView.builder(
                  //dalil estefade az listview.builder in bode ke aghar..
                  //..tedad contact ha ziad bod dar safhe be moshkel nakhorim..
                  //..hamchenin beshe ono scroll kard.
                  itemCount: Readingdata.peopleinfo.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 5, top: 5, left: 5, right: 5),
                      child: Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // onPrimary: Color(0xFF6A7EED),
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {
                            setState(() {
                              PersonScreen.a = "0";
                              PersonScreen.b = "0";
                              PersonScreen.contactNumSelect = index;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return PersonScreen();
                                  },
                                ),
                              );
                            });
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Image.asset("images/peoplepic.png"),
                                  margin: EdgeInsets.all(4),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          "${Readingdata.peopleinfo[index][3]}",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Container(
                                        height: 7,
                                      ),
                                      Container(
                                        child: Text(
                                          "${Readingdata.peopleinfo[index][1]}",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 8,
                              ),
                            ],
                          ),
                        ),
                        height: 70,
                        margin: EdgeInsets.all(5),
                        // color: Colors.grey,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
