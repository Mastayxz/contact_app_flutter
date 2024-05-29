import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        leading: Icon(Icons.settings),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "General",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text(
                "Dark Mode",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Switch(
                value: true, // Example switch value, replace with actual value
                onChanged: (value) {
                  // Implement dark mode functionality here
                },
                activeColor: Colors.amber[800],
              ),
            ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text(
                "Notifications",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onTap: () {
                // Navigate to notification settings page
              },
            ),
            Divider(color: Colors.grey),
            Text(
              "Account",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text(
                "Sign out",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.exit_to_app, color: Colors.white),
              onTap: () {
                // Implement sign out functionality here
              },
            ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text(
                "Delete account",
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.delete, color: Colors.white),
              onTap: () {
                // Implement delete account functionality here
              },
            ),
            Divider(color: Colors.grey),
            SizedBox(height: 20.0),
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text(
                "Genta Arimbawa", // Update with the profile name
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.edit, color: Colors.white),
              onTap: () {
                // Navigate to edit profile page
              },
            ),
            Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
