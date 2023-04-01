import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:weventa/src/_core/errors/aurh_exception.dart';
import 'package:weventa/src/authentication/data/config/auth_status.dart';
import 'package:weventa/src/authentication/data/sources/confirm_reset.dart';
import 'package:weventa/src/authentication/data/sources/create_user.dart';
import 'package:weventa/src/authentication/data/sources/reset_email.dart';
import 'package:weventa/src/authentication/data/sources/verify_reset_code.dart';

import '../../../_core/errors/failure.dart';
import '../../domain/respository/auth_repository.dart';
import '../sources/auth_logout.dart';

abstract class AuthDataRepository extends AuthRepository {
  @override
  Future googleSignin() {
    // TODO: implement googleSignin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthStatus>> emailVerification() {
    // TODO: implement emailVerification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AuthStatus>> logout() async {
    final logout = AuthLogout();
    try {
      return Right(await logout());
    } on AuthException catch (e) {
      return Left(Failure(e.msg, e.code));
    } catch (e) {
      return Left(Failure("unexcepted error", "407"));
    }
  }

  @override
  Future<Either<Failure, User?>> registerUser(
      {required String email, required String password}) async {
    final createUser = CreateUser();
    try {
      final user = await createUser(email, password);
      return Right(user);
    } on AuthException catch (e) {
      return Left(Failure(e.msg, e.code));
    } catch (e) {
      return Left(Failure("unexcepted error", "407"));
    }
  }

  @override
  Future<Either<Failure, AuthStatus>> sendPasswordResetEmail(
      String email) async {
    final resetEmail = ResetEmail();

    try {
      return Right(await resetEmail(email));
    } on AuthException catch (e) {
      return Left(Failure(e.msg, e.code));
    } catch (e) {
      return Left(Failure("unexcepted error", "407"));
    }
  }

  @override
  Future<Either<Failure, AuthStatus>> confirmPasswordReset(
      String code, String newPassword) async {
    final confirmReset = ConfirmReset();

    try {
      return Right(await confirmReset(code, newPassword));
    } on AuthException catch (e) {
      return Left(Failure(e.msg, e.code));
    } catch (e) {
      return Left(Failure("unexcepted error", "407"));
    }
  }

  @override
  Future<Either<Failure, String>> verifyPasswordResetCode(String code) async {
    final resetVerification = ResetCodeVerification();

    try {
      return Right(await resetVerification(code));
    } on AuthException catch (e) {
      return Left(Failure(e.msg, e.code));
    } catch (e) {
      return Left(Failure("unexcepted error", "407"));
    }
  }
}
