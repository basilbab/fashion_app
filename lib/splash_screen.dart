import 'package:fashion_app/presentation/login_screen.dart';
import 'package:flutter/material.dart';

class ScreenSplah extends StatefulWidget {
  const ScreenSplah({super.key});

  @override
  State<ScreenSplah> createState() => _ScreenSplahState();
}

class _ScreenSplahState extends State<ScreenSplah> {
  @override
  void initState() {
    screenNavigation();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.pink,
            ),
            Text('Fashion App Loading...')
          ],
        ),
      ),
    );
  }

  Future<void> screenNavigation() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ScreenLogin()));
  }
}
