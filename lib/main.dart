import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Mapp'),
            centerTitle: true,
          ),
          drawer: const Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Text('Logout'),
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
              const SizedBox(
                height: 10.0,
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'profile',
              )
            ],
            onDestinationSelected: (int value) {},
            selectedIndex: 1,
          ),
        ),
      ),
    );
  }
}
