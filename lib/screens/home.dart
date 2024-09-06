import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: Icon(Icons.camera_alt,color: Colors.white,),
              onPressed: () {
                // Handle camera action
              },
            ),
            IconButton(
              icon: Icon(Icons.search,color: Colors.white,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert,color: Colors.white,),
              onPressed: () {
                _showPopupMenu(context);
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message, color: Colors.white),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.group),
              title: Text('New Group'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('New Contact'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        );
      },
    );
  }
}

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person.jpg'),
          ),
          title: Text('John', style: TextStyle(color: Colors.black)),
          subtitle: Text('Hey! How are you?', style: TextStyle(color: Colors.grey)),
          trailing: Text('12:00 PM', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person1.jpg'),
          ),
          title: Text('Jane Doe', style: TextStyle(color: Colors.black)),
          subtitle: Text('Let\'s heyy', style: TextStyle(color: Colors.grey)),
          trailing: Text('11:45 AM', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person2.jpg'),
          ),
          title: Text('mariya', style: TextStyle(color: Colors.black)),
          subtitle: Text('Let\'s where are u?', style: TextStyle(color: Colors.grey)),
          trailing: Text('11:45 AM', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person3.jpg'),
          ),
          title: Text('teena', style: TextStyle(color: Colors.black)),
          subtitle: Text('Let\'s meet at 5 PM', style: TextStyle(color: Colors.grey)),
          trailing: Text('11:45 AM', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person4.jpg'),
          ),
          title: Text('Alice', style: TextStyle(color: Colors.black)),
          subtitle: Text('See you there!', style: TextStyle(color: Colors.grey)),
          trailing: Text('10:30 AM', style: TextStyle(color: Colors.grey)),
        ),
        // Add more ListTiles for each chat person
      ],
    );
  }
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/person3.jpg'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.add_circle, color: Colors.green),
              ),
            ],
          ),
          title: Text('My Status', style: TextStyle(color: Colors.black)),
          subtitle: Text('Tap to add status update', style: TextStyle(color: Colors.grey)),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person4.jpg'),
          ),
          title: Text('John Doe', style: TextStyle(color: Colors.black)),
          subtitle: Text('Today, 2:00 PM', style: TextStyle(color: Colors.grey)),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person5.jpg'),
          ),
          title: Text('Alice', style: TextStyle(color: Colors.black)),
          subtitle: Text('Today, 11:00 AM', style: TextStyle(color: Colors.grey)),
        ),
        // Add more ListTiles for each status
      ],
    );
  }
}

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person5.jpg'),
          ),
          title: Text('Jane Doe', style: TextStyle(color: Colors.black)),
          subtitle: Text('Yesterday, 11:00 PM', style: TextStyle(color: Colors.grey)),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person6.jpg'),
          ),
          title: Text('John Doe', style: TextStyle(color: Colors.black)),
          subtitle: Text('Yesterday, 10:00 AM', style: TextStyle(color: Colors.grey)),
          trailing: Icon(Icons.call, color: Colors.green),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/person1.jpg'),
          ),
          title: Text('Alice', style: TextStyle(color: Colors.black)),
          subtitle: Text('Yesterday, 9:00 AM', style: TextStyle(color: Colors.grey)),
          trailing: Icon(Icons.video_call, color: Colors.green),
        ),
        // Add more ListTiles for each call person
      ],
    );
  }
}
