import 'package:book_review/firebase_options.dart';
import 'package:book_review/src/app.dart';
import 'package:book_review/src/common/interceptor/custom_interceptor.dart';
import 'package:book_review/src/common/model/naver_book_search_option.dart';
import 'package:book_review/src/common/repository/naver_api_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // firebase 를 사용하는 경우 초기화를 시켜줘야함
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Dio dio = Dio(BaseOptions(baseUrl: 'https://openapi.naver.com/'));
  dio.interceptors.add(CustomInterceptor());

  runApp(MyApp(dio: dio));
}

class MyApp extends StatelessWidget {
  final Dio dio;
  const MyApp({super.key, required this.dio});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(create: (context) => NaverBookRepository(dio)),
        ],
        child: const App(),
    );
  }
}
