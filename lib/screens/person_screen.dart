import 'package:flutter/material.dart';
import 'package:nexo/networking/data.dart';
import 'package:nexo/screens/contact_screens.dart';

class PersonScreen extends StatefulWidget {
  static int contactNumSelect;
  static var a = "0";
  static var b = "0";
  //motehgaiere a va b baraye ine ke vaghti save mizanim dakhel app
  //aghar yeki az parametr haro taghir nadim be khater inke value in onchange az taghir
  //ghabli adad dare miad on adade ro baraye contact jadid ma ham save mikone
  //dar srati ke manamikhastim taghiresh bedim.ba in kar baees ishim dokme save faghat
  //roye moteghaieri ke taghir karde ro emal kone.
  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
  static var changedage =
      Readingdata.peopleinfo[PersonScreen.contactNumSelect][0];
  static var changedphonenumber =
      Readingdata.peopleinfo[PersonScreen.contactNumSelect][1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ContactScreens();
                                  },
                                ),
                              );
                            });
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                      Text(
                        "Contacts",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontFamily: "JosefinSans",
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: TextButton(
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              if (PersonScreen.b == '1') {
                                Readingdata.peopleinfo[PersonScreen
                                    .contactNumSelect][0] = changedage;
                              }
                              if (PersonScreen.a == '1') {
                                Readingdata.peopleinfo[PersonScreen
                                    .contactNumSelect][1] = changedphonenumber;
                              }
                              ;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ContactScreens();
                                  },
                                ),
                              );
                            });
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "JosefinSans",
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        child: Image.asset("images/peoplepic.png"),
                        margin: EdgeInsets.all(10),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text(
                          "${Readingdata.peopleinfo[PersonScreen.contactNumSelect][3]}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        margin: EdgeInsets.only(top: 7),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Text(
                          "@${Readingdata.peopleinfo[PersonScreen.contactNumSelect][2]}",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.only(top: 15, left: 17),
                          child: Text(
                            "Contact info",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Phone number",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  child: TextFormField(
                                    initialValue:
                                        "${Readingdata.peopleinfo[PersonScreen.contactNumSelect][1]}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          borderSide: BorderSide.none),
                                    ),
                                    onChanged: (value) {
                                      changedphonenumber = value;
                                      PersonScreen.a = "1";
                                    },
                                  ),
                                  margin: EdgeInsets.only(left: 15, right: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.only(left: 25, top: 5),
                                  child: Text(
                                    "Age",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  child: TextFormField(
                                    initialValue:
                                        "${Readingdata.peopleinfo[PersonScreen.contactNumSelect][0]}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                          borderSide: BorderSide.none),
                                    ),
                                    onChanged: (value) {
                                      changedage = value;
                                      PersonScreen.b = '1';
                                    },
                                  ),
                                  margin: EdgeInsets.only(left: 15, right: 15),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 14,
                        child: Container(),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(left: 25, right: 25, top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Color(0xFFE2E3E7),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
