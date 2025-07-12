import 'package:flutter/material.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand( // fills the parent
      child: Image.asset(
        'lib/assets/banner.png',
        fit: BoxFit.cover, // or BoxFit.contain/fill depending on design
      ),
    );
  }
}
