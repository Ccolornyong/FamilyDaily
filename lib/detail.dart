import 'package:familydaily/home01.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F3),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDF9F3),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 20),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home01())
              );
          },
            icon: const Icon(Icons.chevron_left,),),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 20),
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
            ),
          ]
      ),
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    width: 2,
                    color: Color(0xFFFEE6B6)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/test_mom.png', width: 50,),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}