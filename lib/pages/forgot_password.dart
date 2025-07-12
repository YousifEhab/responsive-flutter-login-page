import 'package:flutter/material.dart';
import 'package:responsive_flutter_login_page/widgets/logo.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                          SizedBox(height: constraints.maxHeight * 0.05),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Reset your password",
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
                              "Type in your registered email address to reset password",
                              style: TextStyle(
                                fontSize: constraints.maxWidth * 0.0325,
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.025),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email address",
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.025),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Theme.of(
                                    context,
                                  ).colorScheme.primary,
                                  foregroundColor: Theme.of(
                                    context,
                                  ).colorScheme.onPrimary,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/resetPassword',
                                  );
                                },
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("NEXT"),
                                    SizedBox(width: 8),
                                    Icon(Icons.arrow_forward),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: constraints.maxHeight * 0.025),
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
