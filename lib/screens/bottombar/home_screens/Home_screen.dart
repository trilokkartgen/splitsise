import 'package:flutter/material.dart';
import 'package:splitwise/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.green.withOpacity(0.2),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: Container(
                  width: width,
                  height: height*0.35,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
                  ),
                )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'kartgen',
                            style: TextStyle(fontSize: 20, color: Colors.white70),
                          ),
                          Text(
                            'Bill Split',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.white, // Shadow color
                                spreadRadius: 1, // Spread radius
                                blurRadius: 2, // Blur radius
                                offset: Offset(0, 1), // Offset in x and y directions
                              ),
                            ],
                            borderRadius: BorderRadius.circular(11)),
                        child: const Column(
                          children: [
                            Icon(
                              Icons.person,
                              size: 45,
                              color: Colors.green,
                            ),
                            Text(
                              'Trilok',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),

                        borderRadius: BorderRadius.circular(21),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.green, // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 2, // Blur radius
                          offset: Offset(0, 1), // Offset in x and y directions
                        ),
                      ],),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.green,fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '17.500',
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.black,
                              )
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 50,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.green,

                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey, // Shadow color
                                          spreadRadius: 1, // Spread radius
                                          blurRadius: 2, // Blur radius
                                          offset: Offset(0, 1), // Offset in x and y directions
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(21)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.account_circle,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Group Name',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 11),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey, // Shadow color
                            spreadRadius: 1, // Spread radius
                            blurRadius: 3, // Blur radius
                            offset: Offset(0, 2), // Offset in x and y directions
                          ),
                        ],
                        borderRadius: BorderRadius.circular(21)),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.watch_later_outlined,color: Colors.white,size: 60,),
                          SizedBox(width: 20,),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Last Split',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19),
                              ),
                              Text(
                                '17.500',
                                style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.green, // Shadow color
                            spreadRadius: 1, // Spread radius
                            blurRadius: 3, // Blur radius
                            offset: Offset(0, 1), // Offset in x and y directions
                          ),
                        ],
                        borderRadius: BorderRadius.circular(21)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Friends',
                                style:
                                    TextStyle(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.black,
                              )
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  height: 20,
                                  width: width*0.245,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey, // Shadow color
                                          spreadRadius: 1, // Spread radius
                                          blurRadius: 2, // Blur radius
                                          offset: Offset(0, 1), // Offset in x and y directions
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(21)),
                                  child: const Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.account_circle,
                                        size: 85,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'User1',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
