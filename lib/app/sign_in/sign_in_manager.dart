import 'dart:async';

import 'package:flutter/material.dart';
import 'package:time_tracker/services/auth.dart';

class SignInManager {
  SignInManager({required this.auth, required this.isLoading});
  final AuthBase auth;
  final ValueNotifier<bool> isLoading;

  Future<dynamic> _signIn(Future<dynamic> Function() signInMethod) async {
    try {
      isLoading.value = true;
      return await signInMethod();
    } catch (e) {
      isLoading.value = false;
      rethrow;
    }
  }

  Future<dynamic> signInAnonymously() async => await _signIn(auth.signInAnonymously);

  Future<dynamic> signInWithGogole() async => await _signIn(auth.signInWithGogole);

  Future<dynamic> signInWithFacebook() async => await _signIn(auth.signInWithFacebook);
}
