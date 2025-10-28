import 'package:flutter/material.dart';

void main() {
  runApp(const RismanitaApp());
}

class RismanitaApp extends StatelessWidget {
  const RismanitaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RismanitaApp",
      home: const MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to RismanitaApp"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "Menampilkan Gambar dengan Image.asset",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            //gambar dari assets
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/global.jpg",
                height: 200,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Menampilkan Gambar Bundar (Circle Avatar)",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("assets/images/loopy_lembur.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
