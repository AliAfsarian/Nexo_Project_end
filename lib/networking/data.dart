import 'package:nexo/networking/apiget.dart';

class Readingdata {
  static List peopleinfo = [];
  Future<void> readdata() async {
    for (int i = 0; i < Networking.maindata.length; i++) {
      List test = [];
      test.add(Networking.maindata[i]['Age']);
      test.add(Networking.maindata[i]['Date']);
      test.add(Networking.maindata[i]['ID']);
      test.add(Networking.maindata[i]['Nmae']);
      peopleinfo.add(test);
    }
    // print(peopleinfo);
  }
}
