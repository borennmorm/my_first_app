import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Change the duration as needed
    );

    // Create a curved animation
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // Start the animation
    _controller.repeat(reverse: true);

    // Navigate to home after a delay
    _navigateToHome();
  }

  @override
  void dispose() {
    // Dispose the animation controller
    _controller.dispose();
    super.dispose();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 2000));
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Icon(
            Icons.hourglass_empty,
            size: 50,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
