import 'package:beacon/Theme/beaconColors.dart';
import 'package:beacon/Theme/beaconConstants.dart';
import 'package:beacon/Widgets/outlinedImageButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                child: Container(
                  color: BeaconColors.secondary,
                  width: Get.width,
                  height: Get.width * 0.65,
                ),
                clipper: CustomClipPath(),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 60.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'SKIP',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: BeaconColors.lightGrey,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 2,
                ),
                Container(
                  width: 120.0,
                  height: 120.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BeaconConstants.borderRadius,
                    boxShadow: [
                      BeaconConstants.shadow,
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: BeaconColors.darkGrey,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Signin to let beacon lead\nyour way',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: BeaconColors.lightGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                OutlinedImageButton(
                  image: 'assets/images/mailIcon.png',
                  label: 'Signin with Email',
                ),
                OutlinedImageButton(
                  image: 'assets/images/googleIcon.png',
                  label: 'Signin with Google',
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: BeaconColors.lightGrey,
                          fontWeight: FontWeight.w600,
                        ),
                        children: [
                          TextSpan(
                            text: 'Signup',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: BeaconColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 5, size.height - 40, size.width / 2, size.height - 20);
    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
