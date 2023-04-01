enum AuthStatus {
  inProgress("Waiting..."),
  failed("Failed!"),
  done("Successful");

  /// contains details about `status`
  final String msg;
  const AuthStatus(this.msg);
}
