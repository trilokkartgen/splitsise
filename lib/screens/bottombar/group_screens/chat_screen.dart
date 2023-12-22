import 'package:flutter/material.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Name'),
        backgroundColor: Colors.deepPurple,

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Aligns content at the bottom
          children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width*0.85,
                  height: 50,
                  child: Center(child: Padding(
                    padding: const EdgeInsets.only(right: 170),
                    child: Text("Enter Amount",style: TextStyle(color: Colors.black),),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Container(
                child: Icon(Icons.add,size: 40,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(360),
                  color: Colors.deepPurple
                ),
              )
            ],),
          )
        ],),
      ),
    );
  }
}
