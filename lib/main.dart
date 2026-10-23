import 'package:flutter/material.dart';

void main() {
  runApp(const Shawn());
}

class Shawn extends StatelessWidget {
  const Shawn({super.key});

  // Declaring a function
  void doSomething() {
    // print bla
    print("Bla bla");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ),
          backgroundColor: Colors.blue,
          title: const Text("Profile"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ClipOval(
                child: Image.asset(
                  'assets/images/shawn.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                "Shawn",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(88.8888),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.school, size: 17, color: Colors.yellow),
                    SizedBox(width: 4),
                    Text("Student"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
