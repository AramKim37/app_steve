import 'package:flutter/material.dart';

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
    _opacityAnimation = Tween<double>(begin: 0.7, end: 1.0).animate(
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
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 150),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Outer circle border
                Container(
                  width: 235,
                  height: 235,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color:
                          Color.fromARGB(255, 184, 220, 244).withOpacity(0.2),
                      width: 2,
                    ),
                  ),
                ),
                Container(
                  width: 245,
                  height: 245,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 167, 212, 243)
                        .withOpacity(0.5), // 연한 색상 추가
                  ),
                ),
                Container(
                  width: 235,
                  height: 235,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 183, 219, 243)
                        .withOpacity(0.5), // 연한 색상 추가
                  ),
                ),
                Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 152, 191, 216)
                        .withOpacity(0.5), // 연한 색상 추가
                  ),
                ),

                // Inner circle border
                Container(
                  width: 220,
                  height: 220,
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
                  opacity: _opacityAnimation, // Link opacity animation
                  child: ClipOval(
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/images/me.jpeg",
                        fit: BoxFit
                            .cover, // Ensure the image covers the container
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
