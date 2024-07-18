import 'package:flutter/material.dart';

class Faculty extends StatelessWidget {
  final List<Map<String, String>> teamMembers = [
    {'name': 'MD Singh', 'role': 'President', 'image': 'assets/images/md.png'},
    {
      'name': 'Hemdutt Joshi',
      'role': 'Vice-President',
      'image': 'assets/images/hemdutt.png'
    },
    {
      'name': 'Vishal Gupta',
      'role': 'Vice-President',
      'image': 'assets/images/vishal.png'
    },
    {
      'name': 'Avinash Chandra',
      'role': 'Vice-President',
      'image': 'assets/images/avinash.png'
    },
    {
      'name': 'Devendar Kumar',
      'role': 'Vice-President',
      'image': 'assets/images/devender.png'
    },
    {
      'name': 'Tarunpreet Bhatia',
      'role': 'Vice-President',
      'image': 'assets/images/tarunpreet.png'
    },
  ];

  Faculty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20), // Adjust space at the top

        // GridView for team members
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 40.0,
              childAspectRatio: 0.5,
            ),
            itemCount: teamMembers.length,
            itemBuilder: (context, index) {
              Map<String, String> member = teamMembers[index];
              return GridTile(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.asset(
                        member['image']!,
                        width: 200,
                        height: 300,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      member['name']!,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      member['role']!,
                      style: const TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
