import 'package:book_review/src/common/component/app_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Stack base 위로 층층히 쌓아 올릴수 있는 형태
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash_bg.png',
            fit: BoxFit.fitHeight,
          ),
          Positioned(
              // 위치 정렬 기준
              // bottom: 0,
              bottom: MediaQuery.of(context).padding.bottom,
              left: 0,
              right: 0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AppFont(
                      '도서 리뷰 앱으로 \n좋아하는 책을 찾아보세요.',
                      textAlign: TextAlign.center,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AppFont('데이터 로드중 입니다.',
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff878787)),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 1,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ]))
        ],
      ),
    );
  }
}
