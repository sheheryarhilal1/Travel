import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:style/Controller/spalsh_controller.dart';
import 'package:style/Utils/ripple_screen.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light, // Makes status bar icons light
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF00BFFF),
                  Color(0xFF1E90FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Ripple Background
                Positioned.fill(
                  child: CustomPaint(
                    painter: RipplePainter(),
                  ),
                ),

                // Central Logo & Text
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.beach_access,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Travely.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
