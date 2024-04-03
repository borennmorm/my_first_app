import 'package:flutter/material.dart';
import 'package:random_number/components/my_buttons_cards.dart';
import 'package:random_number/components/my_drawer.dart';
import 'package:random_number/pages/login_page.dart';
import '../pages/guess_number.dart';
import '../pages/guess_phone_number.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: MyDrawer(),
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
            SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white, // Set the background color to white
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Guess Number
                    MyButtonCard(
                      imagePath: 'assets/images/numbers.png',
                      titleCard: 'Guess\nNumber',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GuessNumber()),
                        );
                      },
                    ),
                    const SizedBox(width: 15),

                    // Guess Phone Number
                    MyButtonCard(
                      imagePath: 'assets/images/telephone.png',
                      titleCard: 'Guess\nPhone Number',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GussePhoneNumber()),
                        );
                      },
                    ),
                    const SizedBox(width: 15),

                    // Login Page
                    MyButtonCard(
                      imagePath: 'assets/images/login.png',
                      titleCard: 'Login & Register',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),

            // Add more rows as needed
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
