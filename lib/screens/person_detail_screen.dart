import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application/models/hero.dart';
import 'package:flutter_application/screens/edit_screen.dart';

class PersonDetailScreen extends StatelessWidget {
  final Person hero;

  PersonDetailScreen({required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          hero.name,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(hero.image),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                '${hero.role}',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSocialIcon(
                  icon: Icons.facebook,
                  color: Colors.amber.shade800,
                  onTap: () {
                    print('Facebook icon pressed');
                  },
                ),
                SizedBox(width: 10),
                _buildSocialIcon(
                  icon: Icons.phone,
                  color: Colors.amber.shade800,
                  onTap: () {
                    print(hero.phone);
                  },
                ),
                SizedBox(width: 10),
                _buildSocialIcon(
                  icon: Icons.message,
                  color: Colors.amber.shade800,
                  onTap: () {
                    print('Instagram icon pressed');
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(color: Colors.grey),
            ListTile(
              title: Text(
                'Bio:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              subtitle: Text(
                hero.bio,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text(
                'Phone: ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                  SizedBox(width: 5),
                  Text(
                    hero.phone,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey),
            ListTile(
              title: Text(
                'Skills:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: hero.skill.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '- ${hero.skill[index]}',
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement edit functionality
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EditPersonScreen(hero: hero)),
          );
        },
        backgroundColor: Colors.amber[800],
        child: Icon(Icons.edit, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildSocialIcon({
    required IconData icon,
    required Color color,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: color,
        child: Icon(
          icon,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
