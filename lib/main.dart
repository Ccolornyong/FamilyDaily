import 'package:flutter/material.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
          home: Scaffold( // 상중하로 나눔
            backgroundColor: const Color(0xFFFDF4E8),
              appBar: AppBar(
                backgroundColor: const Color(0xFFFDF4E8),
              ),// 상단
            body:   Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/familyDailyLogo.png'),
                  Text(
                    style: TextStyle( // 이 부분은 글자 스타일 변경을 위한 코드입니다.
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF636363),
                    ),
                    '소중한 사람들과',
                  ),
                  SizedBox(height: 5),
                  Text(
                    style: TextStyle( // 이 부분은 글자 스타일 변경을 위한 코드입니다.
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF636363),
                    ),
                    '오늘 하루를 나눠보세요',
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 330,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFF0EDEB),
                       ),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.mail_outline, color: Color(0xFF636363)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 330,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFF0EDEB),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.lock_outline, color: Color(0xFF636363)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 330,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xFF7daed3),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFF0EDEB),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text('로그인',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(flex: 1, child: Divider(),),
                      SizedBox(width: 10),
                      Text('또는',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                          fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(width: 10),
                      Expanded(flex: 1, child: Divider(),),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 330,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        width: 2,
                        color: Color(0xFFF0EDEB),
                      ),
                    ),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Center(
                            child: Text('회원가입', ),
                        ),
                      ),
                    ),
                ],
              ),
            ),),// 중단
            bottomNavigationBar: Row(), // 하단
          )
      );
    }
  }