import 'package:familydaily/writting01.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
      return Container(
        height: 65,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.home),
                Text("홈",
                style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.calendar_month),
                Text("캘린더",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Writting01(),
                    ),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.add_circle_outline),
                    Text("기록",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.diversity_3),
                Text("가족방",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.person_outline),
                Text("마이",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}