import 'package:flutter/material.dart';
import 'package:soloq/screens/userProccessing/register_login.dart';

class DiscordAppBar extends StatefulWidget {
  const DiscordAppBar(
      {super.key,
      required Null Function() onSideBarClicked,
      required Null Function() onInfoClicked});

  @override
  State<DiscordAppBar> createState() => _DiscordAppBarState();
}

class _DiscordAppBarState extends State<DiscordAppBar> {
  checkDevice(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 1024) {
      return "desktop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;
    var deviceType = checkDevice(scrWidth);
    if (deviceType == 'mobile') {
      return SafeArea(
        top: true,
        left: true,
        right: true,
        bottom: true,
        child: Container(
          height: 60,
          width: double.infinity,
          color: Color.fromRGBO(54, 57, 63, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Discord',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => userLog()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Center(child: Text('Çıkış')),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Good Everningi John',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                                color: Colors.white)),
                      ),
                      Text('+(1) 345-123-5467',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/avatar.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else if (deviceType == 'tablet') {
      return SafeArea(
        child: Container(
          height: 60,
          width: double.infinity,
          color: Color.fromRGBO(54, 57, 63, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Discord',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.content_paste,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.assignment_ind_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.area_chart_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.chat_outlined,
                    size: 20,
                    color: Colors.amberAccent[100],
                  ),
                  SizedBox(width: 10.0),
                  Icon(
                    Icons.apps_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.call_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 25,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Icon(
                      Icons.doorbell_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => userLog()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Center(child: Text('Çıkış')),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Good Everningi John',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white)),
                      ),
                      Text('+(1) 345-123-5467',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else if (deviceType == 'desktop') {
      return SafeArea(
        child: Container(
          height: 60,
          width: double.infinity,
          color: Color.fromRGBO(54, 57, 63, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Discord',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.content_paste,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'Resume',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Row(
                    children: [
                      Icon(
                        Icons.assignment_ind_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'Contacts',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 10.0),
                  Row(
                    children: [
                      Icon(
                        Icons.area_chart_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'Statistic',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 5.0),
                  Row(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        size: 20,
                        color: Colors.amberAccent[100],
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'Chats',
                        style: TextStyle(color: Colors.amberAccent[100]),
                      )
                    ],
                  ),
                  SizedBox(width: 5.0),
                  Row(
                    children: [
                      Icon(
                        Icons.apps_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3.0),
                      Text(
                        'Resume',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.call_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 15,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Icon(
                      Icons.doorbell_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => userLog()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Center(child: Text('Çıkış')),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Good Everningi John',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white)),
                      ),
                      Text('+(1) 345-123-5467',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Container(
          height: 60,
          width: double.infinity,
          color: Color.fromRGBO(54, 57, 63, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Discord',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.content_paste,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Resume',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 14.0),
                  Row(
                    children: [
                      Icon(
                        Icons.assignment_ind_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Contacts',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 14.0),
                  Row(
                    children: [
                      Icon(
                        Icons.area_chart_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Statistic',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(width: 14.0),
                  Row(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        size: 20,
                        color: Colors.amberAccent[100],
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Chats',
                        style: TextStyle(color: Colors.amberAccent[100]),
                      )
                    ],
                  ),
                  SizedBox(width: 14.0),
                  Row(
                    children: [
                      Icon(
                        Icons.apps_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        'Resume',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.call_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 25,
                      top: 8,
                      bottom: 8,
                    ),
                    child: Icon(
                      Icons.doorbell_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => userLog()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Center(child: Text('Çıkış')),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Good Everningi John',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white)),
                      ),
                      Text('+(1) 345-123-5467',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
