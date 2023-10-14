import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMenuOpen = false;

  void toggleMenu() {
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gmail'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // Handle filter action
            },
          ),
        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: toggleMenu,
                ),
                const Text('Gmail'),
                const Spacer(),
              ],
            ),
            Row(
              children: [
                const Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.inbox),
                        Text('Inbox'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.inbox),
                        Text('Inbox'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.inbox),
                        Text('Inbox'),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Settings'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                TabBar(
                                  tabs: [
                                    Tab(text: 'Tab 1'),
                                    Tab(text: 'Tab 2'),
                                    Tab(text: 'Tab 3'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Add the TabBar widget below the "Settings" widget

                        // Add the TabBarView widget below the "Settings" widget
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
