import 'package:flutter/material.dart';

class PokedexPage extends StatelessWidget {
  final String username;

  const PokedexPage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: GestureDetector(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 16, 10, 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Trainers !',
                    ),
                    Icon(
                      Icons.person_2_rounded,
                      color: Colors.black,
                      size: 40,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for Pokemon",
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// class Pokedexpage extends StatelessWidget {
//   const Pokedexpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Pokedex"),
//       ),
      // body: Column(
      //   children: [
      //     SizedBox(height: 20.0),
      //     Row(
      //       children: [
      //         Container(
      //           width: 100.0,
      //           height: 100.0,
      //           decoration: BoxDecoration(
      //             shape: BoxShape.circle,
      //             image: DecorationImage(
      //               image: AssetImage('assets/images/charmeleon.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //         // SizedBox(height: 20.0),
      //         // Expanded(
      //         //   child: Text(
      //         //     '#001',
      //         //     style: TextStyle(
      //         //       fontSize: 15.0,
      //         //       fontWeight: FontWeight.normal,
      //         //     ),
      //         //   ),
      //         // ),
//               SizedBox(width: 12.0),
//               Expanded(
//                 child: Text(
//                   '#001'
//                   'It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.',
//                   style: TextStyle(
//                     fontSize: 15.0,
//                     fontWeight: FontWeight.normal,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20.0),
//           Row(
//             children: [
//               Container(
//                 width: 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/golduck.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 12.0),
//               Text(
//                 'Row 2',
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20.0),
//           Row(
//             children: [
//               Container(
//                 width: 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/carnivine.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 12.0),
//               Text(
//                 'Row 3',
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20.0),
//           Row(
//             children: [
//               Container(
//                 width: 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/swinub.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 12.0),
//               Text(
//                 'Row 4',
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20.0),
//           Row(
//             children: [
//               Container(
//                 width: 50.0,
//                 height: 50.0,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/zeraora.png'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               SizedBox(width: 12.0),
//               Text(
//                 'Row 5',
//                 style: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }