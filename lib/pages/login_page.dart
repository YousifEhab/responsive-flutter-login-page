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
                            "Sign in",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.05),
                          TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "Username",
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.025),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.025),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    Text("LOGIN"),
                                    SizedBox(width: 8),
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
