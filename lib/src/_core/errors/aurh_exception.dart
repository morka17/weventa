import 'failure.dart';

class AuthException extends Failure implements Exception {
  final String code;
  final String msg;
  AuthException({
    required this.msg,
    required this.code,
  }) : super(msg, code);
}
