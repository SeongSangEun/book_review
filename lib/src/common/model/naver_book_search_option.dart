import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// JsonSerializable 사용하기 위한 규칙
// flutter pub run build_runner watch -> 지속적 빌드
// flutter pub run build_runner build -> 1회성
part 'naver_book_search_option.g.dart';

@JsonSerializable()
class NaverBookSearchOption extends Equatable {
  final String? query;
  final int? display;
  final int? start;
  final NaverBookSearchType? sort;

  // Named 생성자
  const NaverBookSearchOption.init({required String query})
      : this(
          query: query,
          display: 5,
          start: 1,
          sort: NaverBookSearchType.date,
        );

  const NaverBookSearchOption({this.query, this.display, this.start, this.sort});

  Map<String, dynamic> toMap() => _$NaverBookSearchOptionToJson(this);

  @override
  List<Object?> get props => [query, display, start, sort];
}

enum NaverBookSearchType {
  date('출간일순', 'date'),
  sim('정확도순', 'sim');

  const NaverBookSearchType(this.name, this.value);

  final String name;
  final String value;
}
