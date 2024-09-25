import 'package:flutter/material.dart';
import 'package:profile/widgets/profile_text.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key});

  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Opacity animation toggles between 0.0 and 1.0
    _opacityAnimation = Tween<double>(begin: 0.6, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Start repeating the animation (reverse: true for fade in and out)
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // Dispose the controller to avoid memory leaks
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 100, bottom: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Outer circle border
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          Color.fromARGB(255, 138, 186, 218).withOpacity(0.2),
                      width: 2,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 193, 225, 246).withOpacity(0.5),
                  ),
                ),
                Container(
                  width: 230,
                  height: 230,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 205, 230, 246).withOpacity(0.5),
                  ),
                ),
                // Inner circle border
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          Color.fromARGB(255, 116, 178, 201).withOpacity(0.3),
                      width: 2,
                    ),
                  ),
                ),
                // Circular image with opacity animation
                FadeTransition(
                  opacity: _opacityAnimation,
                  child: ClipOval(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/me.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
