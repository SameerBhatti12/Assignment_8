import 'package:flutter/material.dart';

class StatusActivity extends StatefulWidget {
  const StatusActivity({super.key});

  @override
  State<StatusActivity> createState() => _StatusActivityState();
}

class _StatusActivityState extends State<StatusActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          statuslist('assets/images/bike.jpg', 'My Status',
              'Tap to add status update'),
          Container(
            height: 35,
            width: double.infinity,
            color: Color.fromARGB(255, 196, 196, 196),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ' Viewed updates',
                style: TextStyle(
                    color: Color.fromARGB(255, 73, 73, 73),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          statuslist(
              'assets/images/supra.jpg', 'Usman Maqsood', '30 minutes ago'),
          statuslist(
              'assets/images/nature-3yp.png', 'Rameez Khan', '45 minutes ago'),
          statuslist('assets/images/cat.png', 'Hamza Khateeb', '3 hours ago'),
          statuslist('assets/images/nature.jpg', 'Saad Aamir', '22 hours ago'),
          Container(
            height: 35,
            width: double.infinity,
            color: Color.fromARGB(255, 196, 196, 196),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' Muted updates',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 73, 73, 73),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ],
      ),
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

  Widget statuslist(dp, name, message) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(dp),
        // child: Image.asset(dp),
      ),
      title: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        message,
        style: TextStyle(
          color: Color.fromARGB(255, 119, 119, 119),
        ),
      ),
    );
  }
}
