import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation_rail/screens/about.dart';
import 'package:navigation_rail/screens/home.dart';
import 'package:navigation_rail/screens/profile.dart';
import 'package:navigation_rail/screens/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isRailVisible = true;
  int selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeView(),
    ProfileScreen(),
    AboutScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to NavigationRails'),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NavigationRail(
              onDestinationSelected: (index) => setState(() {
                selectedIndex = index;
              }),
              labelType: NavigationRailLabelType.selected,
              leading: Column(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/564x/45/36/a5/4536a550e3323beeeee381b51c0fa43d.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text('Leo Stellas')
                ],
              ),
              selectedIconTheme: IconThemeData(
                size: 45,
                color: Theme.of(context).primaryColor,
              ),
              trailing: IconButton(
                onPressed: () => {},
                icon: Icon(
                  isRailVisible ? Icons.chevron_left : Icons.chevron_right,
                ),
              ),
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text('Profile'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.info),
                  label: Text('About'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
              ],
              selectedIndex: selectedIndex,
            ),
          ),
          Expanded(child: _pages[selectedIndex])
        ],
      ),
    );
  }
}
