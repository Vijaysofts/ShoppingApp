
import 'package:flutter/material.dart';

import 'body.dart';

class Dashboard_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            alignment: Alignment.centerLeft,
            child:const Text(
              "Products",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Body());
  }
}

// final drawerItem = ListView(
//   children: <Widget>[
//     ListTile(
//       title: const Text("Register Screen"),
//     ),
//     ListTile(
//       title: const Text("Login Screen"),
//     )
//   ],
// );

// class _Dashboard_body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 2,
//       children: List.generate(10, (index) {
//         return GestureDetector(
//           onTap: () =>
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Content_page()),
//               ),
//           child: Card(
//             margin: EdgeInsets.all(5.0),
//             color: Colors.white,
//             semanticContainer: true,
//             clipBehavior: Clip.antiAliasWithSaveLayer,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             elevation: 5,
//             child: Column(
//               children: <Widget>[
//                 SizedBox(
//                   height: 170.0,
//                   child: Stack(
//                     children: <Widget>[
//                       Positioned.fill(
//                           child: Image.asset("assets/images/android_icon.png")/*Image.network(
//                           'https://images.unsplash.com/photo-1579202673506-ca3ce28943ef',
//                           fit: BoxFit.cover,
//                         ),*/
//                       ),

//                       /*Positioned(
//                         left: 16.0,
//                         right: 16.0,
//                         child: FittedBox(
//                           fit: BoxFit.scaleDown,
//                           alignment: Alignment.bottomCenter,
//                           child: Center(
//                             child: Text(
//                               "This is card",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.red,
//                               ),
//                             ),
//                           ),
//                         ),
//                       )*/
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         );
//       }),
//     );