import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage 64B", style: GoogleFonts.fredoka(fontSize: 22)),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.blue),
              hoverColor: Colors.lightBlue.shade100,
              title: Text("Homepage"),
              onTap: () {},
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.settings, color: Colors.blue),
              hoverColor: Colors.lightBlue.shade100,
              title: Text("Settings"),
              onTap: () {},
            ),

            Divider(),

            Spacer(),

            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              hoverColor: const Color.fromARGB(255, 245, 179, 252),
              title: InkWell(child: Text("Profile"), onTap: () {}),
            ),
          ],
        ),
      ),
      body: Text(
        "Welcome to homepage",
        style: GoogleFonts.fredoka(
          textStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}