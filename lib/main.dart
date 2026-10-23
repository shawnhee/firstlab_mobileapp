import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Shawn());
}

class Shawn extends StatelessWidget {
  const Shawn({super.key});

  String doSomething() {
    return "Hi, I'm Shawn Hee! This site is created using Flutter";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.green,
          title: const Text("Profile"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green, // Change to any color you like (e.g., Colors.blue, Colors.black)
                    width: 4.0, // Border thickness
                  ),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/shawn.jpg'),
                  backgroundColor: Colors.black,
                  radius: 100,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                doSomething(),
                style: GoogleFonts.comicNeue(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
