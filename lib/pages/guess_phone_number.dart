import 'package:flutter/material.dart';

void main() {
  runApp(GussePhoneNumber());
}

class GussePhoneNumber extends StatefulWidget {
  @override
  _GussePhoneNumberState createState() => _GussePhoneNumberState();
}

class _GussePhoneNumberState extends State<GussePhoneNumber> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Guess Phone Number"),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
          foregroundColor: Colors.white,
          leading: IconButton(
            // Add leading property with IconButton
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.contact_phone,
              color: Colors.blue,
              size: 80,
            ),
            const SizedBox(height: 10),
            const Text(
              "Phone Number",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Phone Number",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                int i = int.parse(_controller.text) % 7;
                List data = [
                  "1. Good",
                  "2. Not good",
                  "3. Business is not very lucrative",
                  "4. Very good",
                  "5. Bad",
                  "6. Very Bad",
                  "7. Business is going well",
                ];
                setState(() {
                  _result = data[i];
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: const SizedBox(
                width: 100,
                child: Center(
                  child: Text(
                    "Guess",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.all(8),
              child: Text(
                "Result: $_result",
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
