import 'package:flutter/material.dart';
import 'package:responsive_flutter_login_page/widgets/logo.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: constraints.maxHeight * 0.05),
                          Logo(),
                          SizedBox(height: constraints.maxHeight * 0.15),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Recovery Email Sent!",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: constraints.maxWidth * 0.07,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.01),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Please check your email for next steps to reset your password.",
                              style: TextStyle(
                                fontSize: constraints.maxWidth * 0.04,
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.05),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Theme.of(
                                  context,
                                ).colorScheme.onPrimary,
                                foregroundColor: Theme.of(
                                  context,
                                ).colorScheme.primary,
                                elevation: 0,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  side: BorderSide(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.primary,
                                    width: 1.5,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                              child: const Text(
                                "BACK TO LOGIN",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
