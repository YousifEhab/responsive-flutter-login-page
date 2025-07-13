import 'package:flutter/material.dart';
import 'package:responsive_flutter_login_page/widgets/logo.dart';
import 'right_panel.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool showRightPanel = constraints.maxWidth >= 600;
          return Row(
            children: [
              Expanded(
                flex: 1,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final showRowAsColumn = constraints.maxWidth < 310;
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.05,
                        vertical: constraints.maxHeight * 0.05,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: constraints.maxHeight * 0.05),
                            Logo(),
                            SizedBox(height: constraints.maxHeight * 0.05),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: constraints.maxHeight * 0.05),
                            TextField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                labelText: "Username",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: constraints.maxHeight * 0.025),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                labelText: "Password",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: constraints.maxHeight * 0.025),
                            if (showRowAsColumn)
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/forgotPassword',
                                      );
                                    },
                                    child: const Text("Forgot your password?"),
                                  ),
                                  const SizedBox(height: 8),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/home');
                                      },
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("LOGIN"),
                                          Icon(Icons.arrow_forward),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            else
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                        context,
                                        '/forgotPassword',
                                      );
                                    },
                                    child: const Text("Forgot your password?"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/home');
                                    },
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("LOGIN"),
                                        Icon(Icons.arrow_forward),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            SizedBox(height: constraints.maxHeight * 0.05),
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
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: const Text("CREATE NEW ACCOUNT"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
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
