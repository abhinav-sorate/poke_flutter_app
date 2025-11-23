import 'package:flutter/material.dart';
import 'package:poke_flutter_app/core/theme.dart';
import 'package:poke_flutter_app/features/favorites/favorites_screen.dart';
import 'package:poke_flutter_app/features/home/home_screen.dart';
import 'package:poke_flutter_app/features/search/search_screen.dart';
import 'package:poke_flutter_app/features/settings/settings_screen.dart';
import 'package:poke_flutter_app/features/team/team_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: const BottomNavbar(),
    );
  }
}

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: theme.primaryColor,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Pokédex',
          ),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
          NavigationDestination(icon: Icon(Icons.people), label: 'Team'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      body: <Widget>[
        HomeScreen(),
        SearchScreen(),
        FavoritesScreen(),
        TeamScreen(),
        SettingsScreen(),
      ][currentPageIndex],
    );
  }
}
