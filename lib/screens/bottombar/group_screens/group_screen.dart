
import 'package:flutter/material.dart';
import 'package:splitwise/screens/bottombar/group_screens/chat_screen.dart';
class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

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
              title: Text('Group Name',style: TextStyle(color: Colors.white),),
              subtitle: Text('Total: 17000'),
              trailing: Icon(Icons.delete),
            
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
