import 'package:flutter/material.dart';
import 'package:profile/widgets/bottom_navigation_bar.dart';
import 'package:profile/widgets/about_me.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Scale animation from 0.5 (small) to 1.0 (full size)
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    // Dispose the controller to avoid memory leaks
    _controller.dispose();
    super.dispose();
  }

  // Method to handle bottom navigation bar tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/me.jpeg", fit: BoxFit.cover),
          ),
          const Positioned.fill(
            top: 80,
            left: -270,
            child: AboutMe(),
          ),
          const Positioned.fill(
            top: 800,
            bottom: 20,
            left: 10,
            right: 10,
            child: BottomBar(),
          ),
        ],
      ),
    );
  }
}
