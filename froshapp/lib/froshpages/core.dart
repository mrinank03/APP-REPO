import 'package:flutter/material.dart';

class Core extends StatelessWidget {
  final List<Map<String, String>> teamMembers = [
    {'name': 'Abhay Bagla', 'role': 'COE', 'image': 'assets/images/Abhay.png'},
    {'name': 'Anuj Pathak', 'role': 'COE', 'image': 'assets/images/anuj.png'},
    {
      'name': 'Anushka Tiwari',
      'role': 'ENC',
      'image': 'assets/images/anushka.png'
    },
    {
      'name': 'Bhavneet Kaur',
      'role': 'COPC',
      'image': 'assets/images/Bhavneet.png'
    },
    {
      'name': 'Diya Wadhawan',
      'role': 'TSLAS',
      'image': 'assets/images/diya.png'
    },
    {
      'name': 'Hritish Mahajan',
      'role': 'CSBS',
      'image': 'assets/images/hritish.png'
    },
    {
      'name': 'Jai Raj Singh Ahluwalia',
      'role': 'CIE',
      'image': 'assets/images/jai.png'
    },
    {
      'name': 'Kriti Goyal',
      'role': 'BIOTECH',
      'image': 'assets/images/kriti.png'
    },
    {
      'name': 'Kshitiz Arora',
      'role': 'ENC',
      'image': 'assets/images/kshitiz.png'
    },
    {
      'name': 'Navansh Krishna Goswami',
      'role': 'ENC',
      'image': 'assets/images/navansh.png'
    },
    {'name': 'Nipun Jain', 'role': 'COE', 'image': 'assets/images/nipun.png'},
    {
      'name': 'Ojas Kumar Singh',
      'role': 'COE',
      'image': 'assets/images/ojas.png'
    },
    {
      'name': 'Pranay Mathur',
      'role': 'COE',
      'image': 'assets/images/pranay.png'
    },
    {
      'name': 'Shivam Kumar',
      'role': 'ENC',
      'image': 'assets/images/shivam.png'
    },
    {
      'name': 'Shreya Gakhar',
      'role': 'COBS',
      'image': 'assets/images/shreya.png'
    },
    {
      'name': 'Soham Bhardwaj',
      'role': 'BIOTECH',
      'image': 'assets/images/soham.png'
    },
    {
      'name': 'Yashik Garg',
      'role': 'COPC',
      'image': 'assets/images/yashik.png'
    },
    {'name': 'Yashika', 'role': 'TSLAS', 'image': 'assets/images/yashika.png'},
  ];

  final List<String> shiftRightNames = [
    'Abhay Bagla',
    'Diya Wadhawan',
    'Hritish Mahajan',
    'Kriti Goyal',
    'Navansh Krishna Goswami',
    'Ojas Kumar Singh',
    'Shivam Kumar',
    'Soham Bhardwaj',
    'Yashika',
  ];

  Core({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
            height:
                20), // Add margin between the buttons row and the first image
        Expanded(
          child: ListView.builder(
            itemCount: teamMembers.length,
            itemBuilder: (context, index) {
              Map<String, String> member = teamMembers[index];
              bool imageOnLeft = index % 2 == 0;
              bool shiftRight = shiftRightNames.contains(member['name']);
              return TeamMemberRow(member, imageOnLeft, shiftRight);
            },
          ),
        ),
      ],
    );
  }

  Widget buildElevatedButton(BuildContext context, String text, String route) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.5),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

class TeamMemberRow extends StatelessWidget {
  final Map<String, String> member;
  final bool imageOnLeft;
  final bool shiftRight;

  const TeamMemberRow(this.member, this.imageOnLeft, this.shiftRight,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 20), // Increased vertical margin for better spacing
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center, // Center align the items
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Align images at the edges
        children: imageOnLeft
            ? [
                Container(
                  width: 146, // Increased image width
                  height: 227, // Increased image height
                  margin: const EdgeInsets.only(
                      left: 20), // Margin from left edge of the phone
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(41.0), // More rounded corners
                    child: Image.asset(
                      member['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center text vertically relative to the image
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Center align the text
                    children: [
                      Text(
                        member['name']!,
                        style: const TextStyle(
                          fontFamily: 'Inter', // Set the font to Inter
                          fontSize: 20, // Font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 100, // Width of the line increased
                        height: 2, // Height of the line
                        color: Colors.white, // Color of the line
                        margin: const EdgeInsets.symmetric(
                            vertical: 4.0), // Margin around the line
                      ),
                      Text(
                        member['role']!,
                        style: const TextStyle(
                          fontFamily: 'Inter', // Set the font to Inter
                          fontSize: 20, // Font size
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                    width: 20), // Margin from right edge of the phone
              ]
            : [
                const SizedBox(width: 20), // Margin from left edge of the phone
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Center text vertically relative to the image
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Center align the text
                    children: [
                      Text(
                        member['name']!,
                        style: const TextStyle(
                          fontFamily: 'Inter', // Set the font to Inter
                          fontSize: 20, // Font size
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 100, // Width of the line increased
                        height: 2, // Height of the line
                        color: Colors.white, // Color of the line
                        margin: const EdgeInsets.symmetric(
                            vertical: 4.0), // Margin around the line
                      ),
                      Text(
                        member['role']!,
                        style: const TextStyle(
                          fontFamily: 'Inter', // Set the font to Inter
                          fontSize: 20, // Font size
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 146, // Increased image width
                  height: 227, // Increased image height
                  margin: const EdgeInsets.only(
                      right: 20), // Margin from right edge of the phone
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(41.0), // More rounded corners
                    child: Image.asset(
                      member['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
      ),
    );
  }
}
