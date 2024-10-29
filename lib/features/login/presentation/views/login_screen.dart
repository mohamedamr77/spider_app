import 'package:flutter/material.dart';
import 'package:spiderapp/features/login/presentation/views/widgets/login_body.dart';

import '../../../../core/utiles/app_images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LoginBody(),
    );
  }
}
