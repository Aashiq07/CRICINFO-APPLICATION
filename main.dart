import 'package:flutter/material.dart';
import 'home_page.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(64, 196, 255, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Hello',
              style: TextStyle(
                color: Colors.white,
                fontSize: 67,
                fontWeight: FontWeight.w800,
              ),
            ),
            const Text(
              'Cricmonk',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 45,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
                'https://icons-for-free.com/iconfiles/png/512/cricket+game+play+sport+sports+icon-1320195204415759370.png'),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const HomePag();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: const Color.fromRGBO(64, 196, 255, 1),
                    minimumSize: const Size(250, 40)),
                child: const Text('Login')),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: const Color.fromRGBO(64, 196, 255, 1),
                minimumSize: const Size(250, 40),
              ),
              child: const Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
