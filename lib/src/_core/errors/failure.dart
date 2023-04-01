class Failure implements Exception {
  final String message;
  final String code;

  Failure(this.message, this.code);
}
