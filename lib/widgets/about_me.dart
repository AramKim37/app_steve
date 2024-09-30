import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/images/mask.png",
            width: 70,
            height: 70,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "About Me",
          style: GoogleFonts.getFont(
            "Shrikhand",
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
      // Container(
      //   width: 80,
      //   height: 80,
      //   decoration: BoxDecoration(
      //     color: Colors.white70,
      //     borderRadius: BorderRadius.circular(20),
      //     boxShadow: const [
      //       BoxShadow(
      //         color: Colors.blueGrey,
      //         offset: Offset(2, 2),
      //         blurRadius: 10,
      //       ),
      //     ],
      //   ),
      //   child: Center(
      //     child: Image.asset(
      //       "assets/images/mask.png",
      //       width: 80,
      //       height: 80,
      //       fit: BoxFit.contain,
      //     ),
      //   ),
      // ),
      // const SizedBox(
      //   height: 5,
      // ),
      // Text(
      //   "About Me",
      //   style: GoogleFonts.getFont("Shrikhand",
      //       fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
      // ),


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
