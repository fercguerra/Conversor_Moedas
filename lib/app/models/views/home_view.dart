import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: double.infinity,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
          child: Column(
            children: [
              Image.network(
                'https://lh3.googleusercontent.com/mUuQy1PsIC2Mq1_ZGlUYP2pgY65qmMuNop5Ts1aKbWyMxNSrI8AEBdE-u26nnDDaAek',
                width: 200,
                height: 200,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: DropdownButton(items: [
                          DropdownMenuItem(
                            child: Text('Real'),
                          ),
                        ], onChanged: (value) {})),
                    const SizedBox(width: 10),
                    const Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 243, 0, 41)),
                onPressed: () {},
                child: const Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
