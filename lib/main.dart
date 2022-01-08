import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                      child: Image(
                        image: AssetImage("assets/images/doctor_image.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(.2),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Bashar Louzon',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Heart Specialist',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          CustomIconStyle(
                            icon: Icons.mail,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomIconStyle(icon: Icons.phone),
                          SizedBox(
                            width: 8,
                          ),
                          CustomIconStyle(
                            icon: Icons.video_call,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                'About',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 2 Road 5\nSaudi Arabia, Riyadh\nKing Fisal Hospital",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.grey[700]),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(fontSize: 24),
                              ),
                              Text(
                                "House 2 Road 5\nSaudi Arabia, Riyadh\nKing Fisal Hospital",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage('assets/images/map_image.JPG'),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconStyle extends StatelessWidget {
  const CustomIconStyle({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.orange,
        size: 32,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.deepOrange[50],
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
