import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 71, 71, 71),
      onTap: (index) {
        if (index == 0) {
          Navigator.of(context).pushReplacementNamed("/");
        }
        if (index == 1) {
          Navigator.of(context).pushReplacementNamed("/list");
        }
        if (index == 2) {
          Navigator.of(context).pushReplacementNamed("/login");
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.login),
          label: 'Login',
        ),
      ],
    );
  }
}
