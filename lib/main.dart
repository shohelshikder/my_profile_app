import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile UI',
      theme: ThemeData(
        // Setting the primary swatch to yellow/orange to match the AppBar
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: const Color(0xFFFDF7FF), // Light purple-ish background
      ),
      home: const MyProfilePage(),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFC107), // Amber/Yellow color
        elevation: 0,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.black54),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black54),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.phone, color: Colors.black54),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // First Item: Ice Cream
              _buildProfileItem(
                icon: Icons.icecream_outlined,
                text: "Ice cream is very delicious right?",
              ),
              
              const SizedBox(height: 60), // Spacing between items

              // Second Item: Programming
              _buildProfileItem(
                icon: Icons.code, // Represents < >
                text: "Programming is not boring if you love it",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to build the circular icon and text
  Widget _buildProfileItem({required IconData icon, required String text}) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: const BoxDecoration(
            color: Color(0xFFE6DDF9), // Light purple circle background
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 80,
            color: const Color(0xFF311B92), // Deep purple icon color
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}