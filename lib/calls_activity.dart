import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CallsActivity extends StatefulWidget {
  const CallsActivity({super.key});

  @override
  State<CallsActivity> createState() => _CallsActivityState();
}

class _CallsActivityState extends State<CallsActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                callslist(
                  'cat.png',
                  'Hamza Khateeb',
                  Icon(
                    Icons.call_made,
                    color: Colors.greenAccent[400],
                  ),
                  ' September, 17 02:00 PM',
                  Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 7, 94, 84),
                  ),
                ),
                callslist(
                    'nature.jpg',
                    'Saad Aamir',
                    Icon(
                      Icons.call_received,
                      color: Colors.red,
                    ),
                    ' January, 5 12:30 PM',
                    Icon(
                      Icons.video_call,
                      color: Color.fromARGB(255, 7, 94, 84),
                    )),
                callslist(
                    'logo1.png',
                    'Abdul Kabeer Bhatti',
                    Icon(
                      Icons.missed_video_call,
                      color: Colors.red,
                    ),
                    ' December, 15 03:44 PM',
                    Icon(
                      Icons.video_call,
                      color: Color.fromARGB(255, 7, 94, 84),
                    )),
                callslist(
                  'thuglife glasses.png',
                  'Sadiq Bhai',
                  Icon(
                    Icons.call_missed,
                    color: Colors.red,
                  ),
                  ' July, 10 9.30 AM',
                  Icon(
                    Icons.video_call,
                    color: Color.fromARGB(255, 7, 94, 84),
                  ),
                ),
              ],
            );
          }),
      floatingActionButton: Container(
        margin: EdgeInsets.only(right: 10, bottom: 10),
        child: FloatingActionButton(
          onPressed: () {},
          shape: CircleBorder(),
          backgroundColor: Colors.greenAccent[400],
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget callslist(dp, name, subicon, subtext, trailicon) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/$dp'),
        //child: Image.asset('assets/images/$dp'),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          subicon,
          Text(
            subtext,
            style: TextStyle(
              color: Color.fromARGB(255, 119, 119, 119),
            ),
          )
        ],
      ),
      trailing: IconButton(onPressed: () {}, icon: trailicon),
    );
  }
}
