import 'package:flutter/material.dart';
import 'package:random_number/pages/login_page.dart';
import '../pages/guess_number.dart';
import '../pages/guess_phone_number.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15, left: 30),
              child: const Text(
                "Projects",
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 20), // Add vertical spacing
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GusseNumberButton(),
                GuessPhoneNumber(),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginRegisterPage(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text("Boring Projects"),
      centerTitle: true,
      backgroundColor: Colors.blue[300],
      foregroundColor: Colors.white,
    );
  }
}

class LoginRegisterPage extends StatelessWidget {
  const LoginRegisterPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
        decoration: BoxDecoration(
          color: Colors.white, // Add background color
          borderRadius: BorderRadius.circular(10), // Add rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Login & Register',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GuessPhoneNumber extends StatelessWidget {
  const GuessPhoneNumber({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GussePhoneNumber()),
        );
      },
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
        decoration: BoxDecoration(
          color: Colors.white, // Add background color
          borderRadius: BorderRadius.circular(10), // Add rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  'assets/images/telephone.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Guess\nPhone Number',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GusseNumberButton extends StatelessWidget {
  const GusseNumberButton({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const GuessNumber()),
        );
      },
      child: Container(
        width: 150,
        height: 150,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 25),
        decoration: BoxDecoration(
          color: Colors.white, // Add background color
          borderRadius: BorderRadius.circular(10), // Add rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  'assets/images/numbers.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Guess\nNumbers',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
