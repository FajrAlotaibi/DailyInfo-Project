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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
        body: LayoutBuilder(
          builder: (context, constraints) {
            final isSmallScreen = constraints.maxWidth < 600;
            final horizontalPadding = isSmallScreen ? 16.0 : 28.0;
            final headingSize = isSmallScreen ? 24.0 : 30.0;
            final verticalSpacing = isSmallScreen ? 20.0 : 38.0;

            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: 12,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      '"An investment in knowledge pays the best interest."',
                      textDirection: TextDirection.ltr,
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
                    SizedBox(height: verticalSpacing),
                    Text(
                      'وسّع معرفتك كل يوم',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: headingSize,
                        height: 1.3,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF242222),
                      ),
                    ),
                    SizedBox(height: verticalSpacing),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: ElevatedButton(
                            onPressed: () {
                              debugPrint("Explore Today's Info");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF403333),
                              foregroundColor: Colors.white,
                              padding: EdgeInsets.symmetric(
                                horizontal: isSmallScreen ? 16 : 32,
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                            ),
                            child: const Text(
                              'استكشف معلومة اليوم',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
