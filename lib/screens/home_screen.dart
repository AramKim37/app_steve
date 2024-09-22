import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 80,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width, //full screen of width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/me.jpeg",
                  fit: BoxFit.cover,
                  height: 400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Text("one"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                      ),
                      child: Text("one"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                      child: Text("one"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
