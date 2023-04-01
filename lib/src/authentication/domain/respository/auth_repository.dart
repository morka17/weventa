import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:weventa/src/_core/errors/failure.dart';
import 'package:weventa/src/authentication/data/config/auth_status.dart';

abstract class AuthRepository {

  /// Confirm [password] reset_code and
  /// update [password]
  ///
  Future<Either<Failure, AuthStatus>> confirmPasswordReset(String code, String newPassword);

  /// To reset password, A mail need to be sent to the
  /// provider email address for verification
  ///
  /// [Send reset email]
  Future<Either<Failure, AuthStatus>> sendPasswordResetEmail(String email);

  /// Password reset code verification
  /// input -> [code]
  Future<Either<Failure, String>> verifyPasswordResetCode(String code);

  /// Create a new user with [Email] and [Password]
  Future<Either<Failure, User?>> registerUser(
      {required String email, required String password});

  /// Verify the user email address
  ///
  Future<Either<Failure, AuthStatus>> emailVerification();

  /// Log in user
  Future<Either<Failure, User>> login();

  /// Handle signin with google credentials
  Future googleSignin();

  /// Login user from the device
  ///
  Future<Either<Failure, AuthStatus>> logout();
}
