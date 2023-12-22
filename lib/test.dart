// import 'package:demo/page1.dart';
// import 'package:demo/page2.dart';
// import 'package:demo/page3.dart';
// import 'package:demo/page4.dart';
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// //void main() => runApp(MaterialApp(home: BottomNavBar()));
//
// class BottomNavBar extends StatefulWidget {
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   int _selectedIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//     Page1(),
//     Page2(),
//     Page3(),Page4()
//     // Text('My Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.blueGrey)),
//     // Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.blueGrey)),
//     // Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Colors.blueGrey)),
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   // int _page = 0;
//   // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: CurvedNavigationBar(
//           // key: _bottomNavigationKey,
//           index: 0,
//           height: 60.0,
//           items: <Widget>[
//             Icon(Icons.home, size: 30),
//             Icon(Icons.group, size: 30),
//             Icon(Icons.person, size: 30),
//             Icon(Icons.account_box, size: 30),
//
//           ],
//           color: Colors.white,
//           buttonBackgroundColor: Colors.white,
//           backgroundColor: Colors.blueAccent,
//           animationCurve: Curves.easeInOut,
//           animationDuration: Duration(milliseconds: 600),
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//           letIndexChange: (index) => true,
//         ),
//         body: Center(
//           child: _widgetOptions.elementAt(_selectedIndex),
//         )
//     );
//   }
// }