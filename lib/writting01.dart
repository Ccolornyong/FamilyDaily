import 'package:familydaily/home01.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/services.dart';

class Writting01 extends StatefulWidget {
  const Writting01({super.key});

  @override
  State<Writting01> createState() => _Writting01State();
  }

  class _Writting01State extends State<Writting01> {

    int selectedIndex = -1;
    final emotions = ['최고야', '행복해', '보통이야', '슬퍼요', '힘들어요'];
    final emotionImages = [
      'assets/emotionImages/best.png',
      'assets/emotionImages/happy.png',
      'assets/emotionImages/normal.png',
      'assets/emotionImages/sad.png',
      'assets/emotionImages/tired.png',
    ];
    final TextEditingController contentController = TextEditingController();

    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: const Color(0xFFFDF9F3),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFDF9F3),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Home01()),
                );
              },
              icon: const Icon(Icons.close)
          ),
          title: const Text(
            '오늘 하루 기록하기',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SafeArea(child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Text('사진 추가',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 12,),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(12),
                  color: Colors.grey,
                  strokeWidth: 1,
                  dashPattern: const [6, 4],

                  child: Container(
                    width: double.infinity,
                    height: 200,

                    child: Stack(
                      children: [

                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.image,
                                size: 50,),
                              SizedBox(height: 5,),
                              Text('사진을 선택해주세요', style: TextStyle(fontSize: 12),),

                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: Icon(Icons.add_circle, size: 40,)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("오늘 기분은?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(emotions.length, (index){
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (selectedIndex == index) {
                            selectedIndex = -1;
                          } else {
                            selectedIndex = index;
                          }
                        });
                      },
                      child: Container(
                        // margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          // color: isSelected
                          //     ? Colors.blue.shade50
                          //     : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: isSelected
                                ? Colors.orange.shade300
                                : Colors.grey.shade300,
                            width: isSelected ? 2 : 1,
                          ),
                        ),
                        child: Column(
                          children: [
                            Image.asset(emotionImages[index], width: 40),
                            SizedBox(height: 10,),
                            Text(
                              emotions[index],
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20,),
                Text('오늘 있었던 일',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 10,),
                TextField(
                  style: TextStyle(
                    fontSize: 14,
                  ),
                  controller: contentController,
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: '오늘 있었던 일을\n자유롭게 작성해보세요🥕',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.all(15),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  // width: 330,
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
                  child: Text(
                    '저장하기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
      );
    }
  }