import 'package:flutter/material.dart';

class next extends StatefulWidget {
  const next({Key? key}) : super(key: key);

  @override
  State<next> createState() => _nextState();
}

class _nextState extends State<next> {
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tab Bar"),
            centerTitle: true,
            bottom: const TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.pink,
                ),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: Icon(Icons.account_circle),
                  ),
                  Tab(
                    icon: Icon(Icons.add),
                  ),
                  Tab(
                    icon: Icon(Icons.abc),
                  ),
                ]),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: cnt,
              onTap: (value) {
                setState(() {
                  cnt = value;
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_call), label: "First"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_call), label: "Second"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add_call), label: "Third"),
              ]),
          body: SafeArea(
            child: TabBarView(
                children: [
                  FirstScreen(),
                  SecondScreen(),
                  ThirdScreen(),
                ]),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'It is a second layout tab, which is responsible for taking pictures from your mobile.',
        style: TextStyle(fontSize: 35.0),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
          'It is a contact tab, which is responsible for displaying the contacts stored in your mobile',
          style: TextStyle(fontSize: 32.0),
        ));
  }
}

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
          'It is a contact tab, which is responsible for displaying the contacts stored in your mobile',
          style: TextStyle(fontSize: 32.0),
        ));
  }
}
