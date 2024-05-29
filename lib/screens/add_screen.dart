import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/models/hero.dart';

class AddPersonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        title: Text(
          'Add Person',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                // keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(color: Colors.white),
                  icon: Icon(Icons.people, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Role",
                  labelStyle: TextStyle(color: Colors.white),
                  icon: Icon(Icons.book_sharp, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  labelText: "Bio",
                  labelStyle: TextStyle(color: Colors.white),
                  icon: Icon(Icons.book_sharp, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  labelText: "Skill",
                  labelStyle: TextStyle(color: Colors.white),
                  icon: Icon(Icons.star, color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade800,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
