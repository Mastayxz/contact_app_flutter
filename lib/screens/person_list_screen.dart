import 'package:flutter/material.dart';
import 'package:flutter_application/models/hero.dart';
import 'package:flutter_application/screens/add_screen.dart';
import 'package:flutter_application/screens/person_detail_screen.dart';

class PersonListScreen extends StatelessWidget {
  final List<Person> heroes;

  PersonListScreen({required this.heroes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.person,
          color: Colors.white,
        ),
        title: Text(
          "Contact Person",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 16), // Added extra space between search bar and list
          Expanded(
            child: ListView.builder(
              itemCount: heroes.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.black, // Set card background color to black
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          heroes[index].name,
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        Icon(Icons.circle_notifications,
                            color: Colors.amber[800])
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              PersonDetailScreen(hero: heroes[index]),
                        ),
                      );
                    },
                    subtitle: Text(
                      heroes[index].role,
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(heroes[index].image),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            bottom: 16.0, right: 16.0), // Adjust bottom and right padding
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddPersonScreen()),
            );
          },
          backgroundColor: Colors.amber[800],
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
