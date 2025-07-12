import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_flutter_login_page/widgets/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Logo(),
          Center(
            child: Text(
              'Welcome',
              style: GoogleFonts.oi(
                fontSize: 40,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
