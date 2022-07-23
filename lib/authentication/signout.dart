// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:juzawo/authentication/fire_base_auth_service.dart';
import 'package:juzawo/authentication/signin.dart';
import 'package:juzawo/screens/home.dart';
import 'package:juzawo/styles/app_colors.dart';
import 'package:juzawo/authentication/signup.dart';
import 'package:juzawo/widgets/custom_formfield.dart';
import 'package:juzawo/widgets/custom_header.dart';
import 'package:juzawo/widgets/custom_richtext.dart';

import '../constants/constants.dart';
import '../widgets/custom_button.dart';

class SignOut extends StatefulWidget {
  const SignOut({Key? key}) : super(key: key);

  @override
  State<SignOut> createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  String get email => _emailController.text.trim();
  String get password => _passwordController.text.trim();
  // ignore: non_constant_identifier_names
  void SignOut() {
    AuthController.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    SignOut();
    return const Scaffold(
      body: Signin(),
    );
  }
}
