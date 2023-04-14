import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:hadron_schematic_assistant/swatches/palette.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<String> _loadData() async {
    await Future.delayed(const Duration(seconds: 15));
    return 'Done!';
  }

    void _navigateToLogin() {
    Get.toNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: _loadData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _navigateToLogin();
          });            
            return Container();
          } else {
            return Scaffold(
              bottomSheet: Container(
                decoration: BoxDecoration(
                  color: surfaceSwatch[900],
                ),
                height: 50,
                width: double.infinity,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Powered by ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Zrnic',
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        ' PROGRAMMERS_KE  ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: primarySwatch[500],
                          fontFamily: 'Audiowide',
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: primarySwatch[500],
                              offset: const Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/Logo.png',
                          width: 30, height: 30),
                    ],
                  ),
                ),
              ),
              body: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/splash_dark.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Hadron',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Audiowide',
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Schematic Assistant',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Zrnic',
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Lottie.asset('assets/images/WebLoader.json', 
                      width: 50.0, height: 50.0, repeat: true),
                    ],
                  ),
                ),
              ),
            );
          }
        });
  }
}
