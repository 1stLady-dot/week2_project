import 'package:flutter/material.dart';
import 'screens/portfolio_screen.dart';
import 'models/portfolio_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final portfolioData = PortfolioData(
      name: 'Louisa Okang-Dennis',
      title: 'BSc Level Information Technology Student',
      bio:    'I am an IT student with a strong interest in system design and emerging technologies. I have hands-on experience with programming, databases, and basic networking, and I am eager to apply my skills to real-world IT solutions while continuously learning and growing in the field.\n',
      skills: ['Flutter • Dart • SQL • Git • UI/UX Design'],
      education: [
        Education(
          institution: 'Valley View University',
          degree: 'BSc Information Technology',
          year: '2023–Present',
        ),
      ],
    );

    return MaterialApp(
      title: 'Professional Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PortfolioScreen(data: portfolioData),
    );
  }
}