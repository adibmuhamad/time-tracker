import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_bloc.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_form_stateful.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_page.dart';
import 'package:time_tracker/services/auth.dart';

import 'mocks.dart';

void main() {
  // late MockAuth mockAuth;

  // setUp(() {
  //   mockAuth = MockAuth();
  // });

  // Future<void> pumpEmailSignInForm(WidgetTester tester, 
  //   {required EmailSignInBloc bloc, VoidCallback? onSignedIn}
  // ) async {
  //   await tester.pumpWidget(Provider<AuthBase>(
  //     create: (_) => mockAuth,
  //     child: MaterialApp(
  //         home: Scaffold(body: EmailSignInFormStateful(
  //           bloc: bloc,
  //           onSignIn: onSignedIn,))),
  //   ));
  // }

  // void stubSignInWithEmailAndPasswordSucceeds() {
  //   when(mockAuth.signInWithEmail(any, any))
  //   .thenAnswer((_) => Future<User>.value(MockUser()));
  // }

  // void stubSignInWithEmailAndPasswordThrows() {
  //   when(mockAuth.signInWithEmail(any, any))
  //   .thenThrow(FirebaseAuthException(code: 'ERROR_WRONG_PASSWORD'));
  // }

  // group('sign in', () {
  //   testWidgets(
  //       'WHEN user doesn\'t enter the email and password '
  //       'AND user taps on the sign-in button '
  //       'THEN signInWithEmail is not called'
  //       'AND user is not signed-in', (WidgetTester tester) async {
  //     var signedIn = false;
  //     await pumpEmailSignInForm(tester, bloc: , onSignedIn: () => signedIn = true,);

  //     final signInButton = find.text('Sign in');
  //     await tester.tap(signInButton);

  //     verifyNever(mockAuth.signInWithEmail(any, any));
  //     expect(signedIn, false);
  //   });

  //   testWidgets(
  //       'WHEN user enters a valid email and password '
  //       'AND user taps on the sign-in button '
  //       'THEN signInWithEmail is called'
  //       'AND user is signed in', (WidgetTester tester) async {
  //     var signedIn = false;
  //     await pumpEmailSignInForm(tester, bloc: , onSignedIn: () => signedIn = true,);

  //     stubSignInWithEmailAndPasswordSucceeds();

  //     const email = 'email@email.com';
  //     const password = 'password';

  //     final emailField = find.byKey(Key('email'));
  //     expect(emailField, findsOneWidget);
  //     await tester.enterText(emailField, email);

  //     final passwordField = find.byKey(Key('password'));
  //     expect(passwordField, findsOneWidget);
  //     await tester.enterText(passwordField, password);

  //     await tester.pump();

  //     final signInButton = find.text('Sign in');
  //     await tester.tap(signInButton);

  //     verify(mockAuth.signInWithEmail(email, password)).called(1);
  //     expect(signedIn, true);
  //   });

  //   testWidgets(
  //       'WHEN user enters a invalid email and password '
  //       'AND user taps on the sign-in button '
  //       'THEN signInWithEmail is called'
  //       'AND user is not signed in', (WidgetTester tester) async {
  //     var signedIn = false;
  //     await pumpEmailSignInForm(tester, bloc: , onSignedIn: () => signedIn = true,);

  //     stubSignInWithEmailAndPasswordThrows();

  //     const email = 'email@email.com';
  //     const password = 'password';

  //     final emailField = find.byKey(Key('email'));
  //     expect(emailField, findsOneWidget);
  //     await tester.enterText(emailField, email);

  //     final passwordField = find.byKey(Key('password'));
  //     expect(passwordField, findsOneWidget);
  //     await tester.enterText(passwordField, password);

  //     await tester.pump();

  //     final signInButton = find.text('Sign in');
  //     await tester.tap(signInButton);

  //     verify(mockAuth.signInWithEmail(email, password)).called(1);
  //     expect(signedIn, false);
  //   });
  // });

  // group('register', () {
  //   testWidgets(
  //       'WHEN user taps on the secondary button '
  //       'THEN form toggle to registration mode', (WidgetTester tester) async {
  //     await pumpEmailSignInForm(tester);

  //     final registerButton = find.text('Need an account? Register');
  //     await tester.tap(registerButton);

  //     await tester.pump();

  //     final createAccountButton = find.text('Create an account');
  //     expect(createAccountButton, findsOneWidget);
  //   });

  //   testWidgets(
  //       'WHEN user taps on the secondary button '
  //       'AND user taps on the register button '
  //       'THEN createUserWithEmail is called', (WidgetTester tester) async {
  //     await pumpEmailSignInForm(tester);

  //     const email = 'email@email.com';
  //     const password = 'password';

  //     final registerButton = find.text('Need an account? Register');
  //     await tester.tap(registerButton);

  //     await tester.pump();

  //     final emailField = find.byKey(Key('email'));
  //     expect(emailField, findsOneWidget);
  //     await tester.enterText(emailField, email);

  //     final passwordField = find.byKey(Key('password'));
  //     expect(passwordField, findsOneWidget);
  //     await tester.enterText(passwordField, password);

  //     await tester.pump();

  //     final createAccountButton = find.text('Create an account');
  //     expect(createAccountButton, findsOneWidget);
  //     await tester.tap(createAccountButton);

  //     verify(mockAuth.createUserWithEmail(email, password)).called(1);
  //   });
  // });
}
