import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('테마적용된 앱바'),),
      body: Center(
        child:
          GestureDetector(
            onTap: () {
              context.go('/detail');
            },
            child: Text('홈페이지'),
          ),
      ),
    );
  }
}
