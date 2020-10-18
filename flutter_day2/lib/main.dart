import 'package:flutter/material.dart';
import 'package:flutter_day2/page1.dart';
import 'package:flutter_day2/page2.dart';
import 'package:flutter_day2/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPage(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: <Widget>[Page1(), Page2()],
        controller: _tabController,
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          labelColor: Colors.deepPurple,
          unselectedLabelColor: Colors.lightGreen,
          tabs: [
            Tab(
              text: 'Hal 1',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Hal 2',
              icon: Icon(Icons.person),
            ),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
