import 'package:flutter/material.dart';

void main() {
  runApp(const DailyInfoApp());
}

class DailyInfoApp extends StatelessWidget {
  const DailyInfoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F2EC),

      appBar: AppBar(
        backgroundColor: const Color(0xFF403333),
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.lightbulb_outline, color: Color(0xFFC9A5A5), size: 24),

            SizedBox(width: 8),

            Text(
              'DailyInfo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '"An investment in knowledge pays the best interest."',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  height: 1.5,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF756D69),
                ),
              ),

              const SizedBox(height: 22),

              Container(
                width: 45,
                height: 3,
                decoration: BoxDecoration(
                  color: const Color(0xFFC9A5A5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(height: 38),

              const Text(
                'Expand Your Knowledge\nEvery Day',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  height: 1.3,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF242222),
                ),
              ),

              const SizedBox(height: 45),

              ElevatedButton(
                onPressed: () {
                  print("Explore Today's Info");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF403333),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  "Explore Today's Info",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
