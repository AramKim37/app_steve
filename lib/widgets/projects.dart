import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey,
                  offset: Offset(2, 2),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                "assets/images/backlog.png",
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "PROJECTS",
            style: GoogleFonts.getFont("Shrikhand",
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
//   return Column(
//     children: [
//       Container(
//         height: 50,
//         width: 50,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20), // Rounded corners
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black26,
//               offset: Offset(2, 2),
//               blurRadius: 6, // Soft shadow for 3D effect
//             ),
//           ],
//         ),
//       ),
//       SizedBox(height: 10),
//       Text(
//         "Projects",
//         style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//       ),
//     ],
//   );
// }
