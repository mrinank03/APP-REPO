import 'package:flutter/material.dart';

class Osc extends StatelessWidget {
  final List<Map<String, String>> teamMembers = [
    {
      'name': 'Ananya Varshneya',
      'role': 'ELE',
      'image': 'assets/images/Ananya.png'
    },
    {
      'name': 'Swastik Raghav',
      'role': 'COE',
      'image': 'assets/images/Swastik.png'
    },
  ];

  Osc({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20), // Adjusted spacing
        Expanded(
          child: ListView.builder(
            itemCount: teamMembers.length,
            itemBuilder: (context, index) {
              Map<String, String> member = teamMembers[index];
              bool imageOnLeft = index % 2 == 0;
              return TeamMemberRow(member, imageOnLeft);
            },
          ),
        ),
      ],
    );
  }
}

class TeamMemberRow extends StatelessWidget {
  final Map<String, String> member;
  final bool imageOnLeft;

  const TeamMemberRow(this.member, this.imageOnLeft, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: imageOnLeft
            ? [
                Container(
                  width: 146,
                  height: 227,
                  margin: const EdgeInsets.only(left: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(41.0),
                    child: Image.asset(
                      member['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        member['name']!,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 100,
                        height: 2,
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                      ),
                      Text(
                        member['role']!,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
              ]
            : [
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        member['name']!,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 100,
                        height: 2,
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                      ),
                      Text(
                        member['role']!,
                        style: const TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 146,
                  height: 227,
                  margin: const EdgeInsets.only(right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(41.0),
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
