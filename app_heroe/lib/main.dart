import 'package:app_heroe/Services/heroe_service.dart';
import 'package:app_heroe/pages/home.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  Future<Widget> futureCall() async {
    // do async operation ( api call, auto login)
    return Future.value(
        Future.delayed(const Duration(seconds: 3)).then((value) => HomeView()));
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => NewHeroe())],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Material App',
            home: EasySplashScreen(
              logo: Image.asset('assets/heroe.png'),
              title: const Text(
                'Heroe App',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.white,
              showLoader: true,
              loadingText: const Text("Loading..."),
              futureNavigator: futureCall(),
            )));
  }
}
