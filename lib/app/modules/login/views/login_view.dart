import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:yash_shop/app/data/utils/app_color.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColor.backgroundColor1,
                  AppColor.backgroundColor2,
                ],
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            decoration: const BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(top: 35, left: 30, right: 30),
                child: Column(
                  children: [
                    const Icon(
                      FontAwesomeIcons.octopusDeploy,
                      color: Colors.grey,
                      size: 45,
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    Material(
                      elevation: 5.0,
                      child: Container(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2.5,
                        decoration:
                            const BoxDecoration(color: AppColor.whiteColor),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Login ".toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                  hintText: "Email",
                                  suffixIcon: Icon(Icons.email_sharp)),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  suffixIcon: Icon(Icons.fingerprint_sharp)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              width: 270,
                              child: ElevatedButton(
                                onPressed: () => controller.onTapSignIn(),
                                child: const Text("Login Page"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
