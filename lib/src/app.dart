import 'package:book_review/src/imsi/detail.dart';
import 'package:book_review/src/imsi/home.dart';
import 'package:book_review/src/splash/page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/**
 * 초기페이지인 App 페이지를 Stateful하게 생성하는 이유
 * 초기 동작시에 route 를 저장시에 계속 갱신하지 않게하기위함
 */
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late GoRouter router;

  @override
  void initState() {
    super.initState();
    router = GoRouter(
      initialLocation: '/', 
      routes: [
       GoRoute(path: '/', builder: (context, state) => SplashPage(),)
    ],
      
    );
  }

  @override
  Widget build(BuildContext context) {
    // MaterailApp -> 1.0
    // MaterialApp.router -> 2.0 우리가 사용하는 go_router 는 2.0 을 사용해야함
    return MaterialApp.router(
      // routerDelegate: router.routerDelegate,
      // routeInformationProvider: router.routeInformationProvider,
      // routeInformationParser: router.routeInformationParser,
      routerConfig: router,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: const Color(0xff1C1C1C),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: const Color(0xff1C1C1C),
      ),
    );
  }
}
