import 'package:flutter/material.dart';
import 'app_shell.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Dot Pattern
          CustomPaint(painter: DotPatternPainter(), size: Size.infinite),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      //Logo with padding and centralised
                      Image.asset('assets/logo.png', height: 120),
                      //Title - Welcome Back
                      const Text(
                        'Join The Learning Hub',
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Start your journey to becoming a doctor today',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 157, 160, 159),
                        ),
                      ),

                      const TextField(
                        decoration: InputDecoration(
                          label: Text('Full Name'),
                          hintText: 'Dr. John Doe',
                          prefixIcon: Icon(Icons.person_outline),
                        ),
                      ),
                      //
                      //Dropdown for College
                      DropdownButtonFormField(
                        decoration: InputDecoration(label: Text('College')),
                        items: [
                          DropdownMenuItem(value: '1', child: Text('Option 1')),
                          DropdownMenuItem(value: '2', child: Text('Option 2')),
                        ],
                        onChanged: (value) {},
                      ),

                      const TextField(
                        decoration: InputDecoration(
                          label: Text('Email'),
                          hintText: 'johndoe@gmail.com',
                          prefixIcon: Icon(Icons.email_outlined),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text('Password'),
                          hintText: '********',
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(right: 12.0),
                            child: Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 5),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppShell(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }
}

class DotPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF00B4B1).withAlpha(20)
      ..strokeWidth = 1.0;

    const double spacing = 30.0;
    for (double x = spacing / 2; x < size.width; x += spacing) {
      for (double y = spacing / 2; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), 1.0, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
