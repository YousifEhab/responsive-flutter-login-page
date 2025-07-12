import 'package:flutter/material.dart';
import 'package:responsive_flutter_login_page/widgets/logo.dart';
import 'right_panel.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool showRightPanel = constraints.maxWidth >= 600;
          return Row(
            children: [
              Expanded(
                flex: 2,
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
                          const Text(
                            "Sign up",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "First name",
                                    border: OutlineInputBorder(
                                      // borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: constraints.maxWidth * 0.025),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Last name",
                                    border: OutlineInputBorder(
                                      // borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Username",
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText: "Email address",
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Password",
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Confirm password",
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.onPrimary,
                              foregroundColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home');
                            },
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("REGISTER"),
                                SizedBox(width: 8),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (showRightPanel) Expanded(flex: 1, child: RightPanel()),
            ],
          );
        },
      ),
    );
  }
}
