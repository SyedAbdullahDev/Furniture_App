// ignore_for_file: camel_case_types, must_be_immutable, missing_return

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/widgets/bottomAppBar.dart';
import 'package:flutter_ecommerce_app/controller/control.dart';
import 'package:get/get.dart';

class Sign_up extends StatelessWidget {
  Sign_up({Key key}) : super(key: key);
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final Control _controller = Get.put(Control());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 35,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:38.0),
              child: Form(
                key: _key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Enter your name',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Field is empty';
                          return null;
                        },
                        onChanged: (text) {
                          _controller.text.value = text;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Enter your email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Field is empty';
                          String pattern = r'\w+@\w+\.\w+';
                          if (!RegExp(pattern).hasMatch(value))
                            return 'Invalid Email format';
                        },
                        onChanged: (em) {
                          _controller.em.value = em;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Enter your password',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Field is empty';
                          String pattern =
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                          if (!RegExp(pattern).hasMatch(value))
                            return 'Password must contain 8 digits an upper case letter and a symbol';
                        },
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_key.currentState.validate()) {
                            _key.currentState.save();
                            Get.to(BottomBar());
                          }
                        },
                        child: const Icon(Icons.login),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
