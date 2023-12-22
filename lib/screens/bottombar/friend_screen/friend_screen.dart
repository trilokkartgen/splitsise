
import 'package:flutter/material.dart';
import 'package:splitwise/screens/bottombar/group_screens/chat_screen.dart';
class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Name'),
        backgroundColor: Colors.deepPurple,

      ),

      body: ListView.builder(itemCount: 20,itemBuilder: (context, index) {
        return Container(
          child: Card(

            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(),));
              },
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('friend Name',style: TextStyle(color: Colors.white),),
              subtitle: Text('Total Get: 17000'),
              trailing: Icon(Icons.read_more),

            ),
          ),

        );
      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
      ),
    );
  }
}
