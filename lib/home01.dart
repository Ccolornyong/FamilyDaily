import 'package:familydaily/custom_bottom_nav.dart';
import 'package:familydaily/detail.dart';
import 'package:flutter/material.dart';

class Home01 extends StatelessWidget {
  const Home01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF9F3),
      appBar: null,
      body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Image.asset('assets/familyDailyLogo02.png',
                  width: 135),
              Icon(Icons.notifications_none),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            '안녕하세요, 존재님!👋',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            '오늘도 좋은 하루 보내세요!',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey[700],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            // height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                width: 2,
                color: Color(0xFFFEE6B6)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('오늘의 기록',
                            style: TextStyle(
                                fontWeight: FontWeight.bold),),
                          SizedBox(height: 15),
                          Text('😊  행복',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange
                            ),),
                          SizedBox(height: 3,),
                          Text('2024.05.20 (월)',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text("수업 끝나고 친구들과 카페에 갔어요!\n날씨가 너무 좋아서 기분 최고👍",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/test_image.jpg',
                      width: 100,
                      height: 130,
                      fit: BoxFit.cover
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child:
                        Text('❤️ 엄마가 좋아요를 눌렀어요',
                          style: TextStyle(
                            fontSize: 9,
                          ),
                        ),
                    ),
                    Icon(Icons.chat_bubble_outline,
                      size: 15,
                    ),
                    SizedBox(width: 5,),
                    Text('댓글 2개',
                    style: TextStyle(
                      fontSize: 9,
                    ),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(child:
                Text('가족 피드',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Detail(),),
                  );
                },
                child: Row(
                  children: [
                    Text('전체보기',
                      style: TextStyle(
                        fontSize: 10,
                      ),),
                    Transform.translate(
                      offset: const Offset(0, 1),
                      child: const Icon(Icons.chevron_right,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: Color(0xFFFEE6B6),
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/test_mom.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover
                              )
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded( child: Text('엄마', style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),),
                                    Text(
                                      '1시간 전',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[700],
                                      ),
                                    ),],),
                                SizedBox(height: 5,),
                                Text('오늘 날씨가 정말 좋네☀️\n우리 딸고 좋은 하루 보내길!',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('❤️ 2',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),),
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(12),
                          //   child: Image.asset('assets/mom_daily.jpg',
                          //     width: 100,
                          //     height: 130,
                          //     fit: BoxFit.cover
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: Color(0xFFFDF4E8),
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/test_dad.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover
                              )
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded( child: Text('아빠', style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),),
                                    Text(
                                      '3시간 전',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[700],
                                      ),
                                    ),],),
                                SizedBox(height: 5,),
                                Text('저녁 맛있게 먹었니?\n건강 잘 챙기고!',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Transform.translate(
                                      offset: const Offset(0, 1),
                                      child: const Icon(Icons.chat_bubble_outline,
                                        size: 15,
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text('1',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),),
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(12),
                          //   child: Image.asset('assets/mom_daily.jpg',
                          //     width: 100,
                          //     height: 130,
                          //     fit: BoxFit.cover
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            width: 2,
                            color: Color(0xFFFDF4E8),
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset('assets/test_mom.png',
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover
                              )
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded( child: Text('언니', style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),),
                                    Text(
                                      '5시간 전',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey[700],
                                      ),
                                    ),],),
                                SizedBox(height: 5,),
                                Text('우리 학교에 프미나랑 리센느 왔다ㅎㅎ',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Row(
                                      children: [Transform.translate(
                                        offset: const Offset(0, 1),
                                        child: const Icon(Icons.chat_bubble_outline,
                                          size: 15,
                                        ),
                                      ),
                                        SizedBox(width: 5,),
                                        Text('1',
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                        SizedBox(width: 10,),
                                        Text('❤️ 1',
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),),
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(12),
                          //   child: Image.asset('assets/mom_daily.jpg',
                          //     width: 100,
                          //     height: 130,
                          //     fit: BoxFit.cover
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ),
        ],
      ))
        ,),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
