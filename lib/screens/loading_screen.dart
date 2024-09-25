import 'package:flutter/material.dart';
import 'dart:async';
import 'package:profile/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  bool _showButton = false;

  @override
  void initState() {
    super.initState();

    // AnimationController 초기화
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    // 슬라이드 애니메이션 설정 (왼쪽에서 오른쪽으로)
    _slideAnimation = Tween<Offset>(
      begin: const Offset(-1, 0), // 왼쪽에서 시작
      end: Offset.zero, // 현재 위치로 이동
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // 12초 후에 버튼을 표시
    Timer(const Duration(seconds: 11), () {
      setState(() {
        _showButton = true; // 버튼 표시
      });
      _controller.forward(); // 애니메이션 시작
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // AnimationController 정리
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center, // 모든 요소를 가운데로 정렬
          children: [
            // GIF 파일 (중앙에 고정)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/steve.gif",
                  fit: BoxFit.cover,
                ),
              ],
            ),
            // 버튼 (GIF 아래에 나타남)
            Positioned(
              bottom: 0, // 버튼이 GIF 바로 아래에 위치하게 설정
              child: _showButton
                  ? SlideTransition(
                      position: _slideAnimation,
                      child: SizedBox(
                        width: 200, // 원하는 가로 길이 설정
                        child: ElevatedButton(
                          onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          ),
                          child: Text(
                            "Click to Unlock",
                            style: GoogleFonts.getFont('Shrikhand'),
                          ), // 버튼 텍스트
                        ),
                      ),
                    )
                  : SizedBox.shrink(), // 버튼이 보이지 않을 때 공간을 차지하지 않게 설정
            ),
          ],
        ),
      ),
    );
  }
}
