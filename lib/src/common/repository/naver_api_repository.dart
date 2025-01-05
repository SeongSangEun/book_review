import 'package:book_review/src/common/model/naver_book_info_result.dart';
import 'package:book_review/src/common/model/naver_book_search_option.dart';
import 'package:dio/dio.dart';

class NaverBookRepository {
  final Dio _dio;
  NaverBookRepository(this._dio);
  
  Future<NaverBookInfoResult> searchBooks(NaverBookSearchOption option) async {
    var response = await _dio.get('v1/search/book.json', queryParameters: option.toMap());

    var naverBookInfoResult = NaverBookInfoResult.fromJson(response.data);
    print(naverBookInfoResult);
    return naverBookInfoResult;
  }
  Future<dynamic> searchBooksVer2(NaverBookSearchOption option) async {
    var response = await _dio.get('v1/search/book.json', queryParameters: option.toMap());

    print(response);
    return true;
  }
  Future<dynamic> searchBooksVer1() async {
    var response = await _dio.get('v1/search/book.json', queryParameters: {
      'query':'플러터',
      'display':10,
      'start':1,
      'sort':'date'
    });

    print(response);
    return true;
  }
}