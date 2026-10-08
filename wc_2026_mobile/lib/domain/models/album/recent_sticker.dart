import 'package:equatable/equatable.dart';

class RecentSticker({
  required final String code,
  required final int number,
  required final int repeated,
}) extends Equatable {
  @override
  List<Object?> get props => [code, number, repeated];
}
