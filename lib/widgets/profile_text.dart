import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileText extends StatelessWidget {
  const ProfileText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white,
            Colors.white,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(4, 4),
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.white.withOpacity(0.9),
            offset: const Offset(-4, -4),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Steve Kim"),
              const SizedBox(
                width: 30,
              ),
              const Text(" | ", style: TextStyle(color: Colors.grey)),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 30,
              ),
              SvgPicture.asset(
                "assets/images/canada.svg",
                height: 24,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Hello World"),
        ],
      ),
    );
  }
}
