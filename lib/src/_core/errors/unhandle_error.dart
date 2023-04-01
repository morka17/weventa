class UnhandledException implements Exception {
  final String msg;
  final int code;
  UnhandledException({
    required this.msg,
    required this.code,
  });
}
