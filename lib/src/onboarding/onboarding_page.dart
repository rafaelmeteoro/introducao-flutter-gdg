import 'package:flutter/material.dart';
import 'package:introducao_flutter_gdg/src/onboarding/animated_dot.dart';
import 'package:introducao_flutter_gdg/src/onboarding/onboard_content.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            SizedBox(
              height: 500,
              child: PageView.builder(
                itemCount: demoData.length,
                onPageChanged: (value) {
                  setState(() {
                    _selectedIndex = value;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardContent(
                    illustration: demoData[index]['illustration'],
                    title: demoData[index]['title'],
                    text: demoData[index]['text'],
                  );
                },
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                demoData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: AnimatedDot(
                    isActive: _selectedIndex == index,
                  ),
                ),
              ),
            ),
            const Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {},
              child: Text('Get Started'.toUpperCase()),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> demoData = [
  {
    'illustration': Icons.access_alarm,
    'title': 'All your favorites',
    'text':
        'Order from the best local restaurants \nwith easy, on-demand delivery.',
  },
  {
    'illustration': Icons.accessibility,
    'title': 'Free delivery offers',
    'text':
        'Free delivery for new customers via Apple Pay\nand others payment methods.',
  },
  {
    'illustration': Icons.account_box,
    'title': 'Choose your food',
    'text':
        'Easily find your type of food craving and\nyou’ll get delivery in wide range.',
  },
];
