import 'package:flutter/material.dart';

class ChatActivity extends StatefulWidget {
  const ChatActivity({super.key});

  @override
  State<ChatActivity> createState() => _ChatActivityState();
}

class _ChatActivityState extends State<ChatActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                customList("assets/images/cat.png", "Hamza Khateeb", "Where?",
                    '00:00 a.m.'),
                customList('assets/images/gtr35.png', 'Sameer Ahmed Bhatti',
                    'My Car!', '12:00 p.m.'),
                customList('assets/images/logo1.png', 'Abdul Kabeer Bhatti',
                    'Good work!', '1:55 p.m.'),
                customList('assets/images/nature.jpg', 'Saad Aamir',
                    'Wait for me', '10:00 a.m.'),
                customList('assets/images/nature-3yp.png', 'Rameez Khan',
                    'Duniya faani hai', '5:45 p.m.'),
                customList('assets/images/supra.jpg', 'Usman Maqsood',
                    'My Dream', '9:15 a.m.'),
                customList('assets/images/thuglife glasses.png', 'Sadiq Bhai',
                    'Sabar', '11:30 p.m.'),
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

  Widget customList(dp, name, Message, Time) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(dp),
          // child: Image.asset(dp),
        ),
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(
          Message,
          style: TextStyle(
            color: Color.fromARGB(255, 119, 119, 119),
          ),
        ),
        trailing: Text(
          Time,
          style: TextStyle(
            color: Color.fromARGB(255, 119, 119, 119),
          ),
        ),
      ),
    );
  }
}
