import 'package:crud_app/components/customAppBar.dart';
import 'package:crud_app/components/customBottomBar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    @override
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(screenWidth * 0.05), // Responsive margin
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 71, 71, 71),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(screenWidth * 0.05), // Responsive margin
                height: screenHeight * 0.07, // Responsive height
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Login Page',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.07, // Responsive font size
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(screenWidth * 0.05),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02), // Responsive space
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize:
                                screenWidth * 0.05), // Responsive button text
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?  Create one ',
                        style: TextStyle(
                            color: Colors.white, fontSize: screenWidth * 0.04),
                        children: [
                          TextSpan(
                            text: 'here',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: screenWidth * 0.04),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/register');
                              },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
