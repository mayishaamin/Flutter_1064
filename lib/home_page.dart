
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color mainColor = Color(0xFF00695C);
  static const Color headerColor = Color(0xFF004D40);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage 64B"),
        backgroundColor: headerColor,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: mainColor,
              ),
              accountName: const Text("Mayisha"),
              accountEmail: const Text("mayisha013@gmail.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  color: mainColor,
                  size: 40,
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              hoverColor: Colors.teal.shade100,
              title: const Text("Homepage"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings),
              hoverColor: Colors.teal.shade100,
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Spacer(),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.logout),
              ),
              hoverColor: Colors.teal.shade100,
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Center(
        child: Text(
          "Welcome to Homepage",
          textAlign: TextAlign.center,
          style: GoogleFonts.lobster(
            fontSize: 36,
            color: mainColor,
          ),
        ),
      ),
    );
  }
}

