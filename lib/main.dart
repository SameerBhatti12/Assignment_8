import 'package:assignment_8_whatsappappscreens/calls_activity.dart';
import 'package:assignment_8_whatsappappscreens/camera_activity.dart';
import 'package:assignment_8_whatsappappscreens/chat_activity.dart';
import 'package:assignment_8_whatsappappscreens/status_activity.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0), // here the desired height
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 7, 94, 84),
              title: Text(
                'WhatsApp',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
                PopupMenuButton(
                    itemBuilder: (context) =>
                        [PopupMenuItem(value: 1, child: Text('New Group'))]),
              ],
            ),
          ),
          body: Column(
            children: [
              Container(
                color: Color.fromARGB(255, 7, 94, 84),
                child: TabBar(
                    //isScrollable: true,
                    indicatorWeight: 2,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.white,
                    indicatorColor: Colors.white,
                    tabs: [
                      Container(width: 40, child: Icon(Icons.camera_alt)),
                      Container(
                          height: 50,
                          width: 95,
                          child: Center(
                              child: Text(
                            'CHATS',
                            style: TextStyle(fontSize: 16),
                          ))),
                      Container(
                          width: 95,
                          child: Center(
                              child: Text(
                            'STATUS',
                            style: TextStyle(fontSize: 16),
                          ))),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: 95,
                          child: Center(
                              child: Text(
                            'CALLS',
                            style: TextStyle(fontSize: 16),
                          )))
                    ]),
              ),
              Flexible(
                child: TabBarView(children: [
                  CameraActivity(),
                  ChatActivity(),
                  StatusActivity(),
                  CallsActivity()
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
