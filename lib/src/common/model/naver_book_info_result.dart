import 'package:book_review/src/common/model/naver_book_info.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'naver_book_info_result.g.dart';

@JsonSerializable()
class NaverBookInfoResult extends Equatable {
  final String? lastBuildDate;
  final int? total;
  final int? start;
  final int? display;
  final List<NaverBookInfo>? items;

  const NaverBookInfoResult(
      {this.lastBuildDate, this.total, this.start, this.display, this.items});

  factory NaverBookInfoResult.fromJson(Map<String, dynamic> json) =>
      _$NaverBookInfoResultFromJson(json);

  @override
  List<Object?> get props => [
        lastBuildDate,
        total,
        start,
        display,
        items,
      ];
}
