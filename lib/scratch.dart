// import 'package:artemis_flutter/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:artemis_flutter/screens/home_screen.dart';

// class FamilyScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FamilyList(),
//     );
//   }
// }
//
// Color gradientStart = Colors.deepPurple[700]; //Change start gradient color here
// Color gradientEnd = Colors.purple[500]; //Change end gradient color here
//
// List<String> _familyMembers = [];
//
// class FamilyList extends StatefulWidget {
//   @override
//   _FamilyListState createState() => _FamilyListState();
// }
//
// class _FamilyListState extends State<FamilyList> {
//   void _addFamilyMember() {
//     setState(() {
//       int index = _familyMembers.length;
//       _familyMembers.add('Member ' + index.toString());
//     });
//   }
//
//   Widget _buildFamilyList() {
//     return ListView.builder(
//       itemBuilder: (context, index) {
//         if (index < _familyMembers.length) {
//           return _buildFamilyMember(_familyMembers[index]);
//         }
//       },
//     );
//   }
//
//   Widget _buildFamilyMember(String memberName) {
//     return Container(
//       padding: EdgeInsets.all(25.0),
//       child: Row(
//         children: [
//           CircleAvatar(
//             child: Text(memberName),
//             radius: 25.0,
//           ),
//           SizedBox(
//             width: 10,
//           ),
//           Text(
//             memberName,
//             style: TextStyle(color: Colors.white, fontSize: 20.0),
//           ),
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size(double.infinity, 100),
//         child: Container(
//           decoration: BoxDecoration(boxShadow: [
//             BoxShadow(color: Colors.black12, spreadRadius: 5, blurRadius: 2)
//           ]),
//           width: MediaQuery.of(context).size.width,
//           height: 100,
//           child: Container(
//             decoration: BoxDecoration(
//                 color: Colors.transparent,
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20),
//                     bottomRight: Radius.circular(20))),
//             child: Container(
//               margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Icon(
//                     Icons.navigate_before,
//                     size: 40,
//                     color: Colors.white,
//                   ),
//                   Text(
//                     "Family Members",
//                     style: TextStyle(fontSize: 30, color: Colors.white),
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => HomeScreen()),
//                       );
//                     },
//                     child: Container(
//                       padding: EdgeInsets.only(right: 5),
//                       child: Text(
//                         "Skip",
//                         style: TextStyle(color: Colors.white, fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//       extendBodyBehindAppBar: true,
//       floatingActionButton: FloatingActionButton(
//         onPressed: _addFamilyMember,
//         tooltip: "Add Family Member",
//         child: Icon(Icons.add),
//       ),
//       body: Container(
//         decoration: kGradient,
//         child: _buildFamilyList(),
//       ),
//     );
//   }
// }
