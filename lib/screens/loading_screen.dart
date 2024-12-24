import 'package:flutter/material.dart';
import 'dart:async';
import 'package:mmac_service/widgets/custom_app_bar.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String loadingText = 'Connecting'; // Initial text
  int dotCount = 0; // Count of dots
  Timer? _timer; // Timer for updating dots

  @override
  void initState() {
    super.initState();
    _startLoadingAnimation(); // Start the animation when the widget is initialized
  }

  void _startLoadingAnimation() {
    // Start a timer that updates the dot count every second
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        dotCount = (dotCount + 1) % 4; // Cycle through 0 to 3
      });
    });

    // Stop the timer after 5 seconds
    Future.delayed(Duration(seconds: 5), () {
      _timer?.cancel(); // Cancel the timer after 5 seconds
      Navigator.pushNamed(context, '/home'); 
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing the widget
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft, // Starting point of the gradient
            end: Alignment.bottomRight, // Ending point of the gradient
            colors: [
              Colors.black.withOpacity(0.9), // Darker shade of black
              Colors.black.withOpacity(0.6), // Lighter shade of black
            ],
          ),
        ),
        child: Center(
          child: Text(
            '$loadingText${'.' * dotCount}', // Append dots based on count
            style: TextStyle(color: Colors.white, fontSize: 24), // Text style
          ),
        ),
      ),
    );
  }
}