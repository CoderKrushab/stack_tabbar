import 'package:flutter/material.dart';
import 'package:stack_tabbar/tabbar.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ok(),
  ));
}

class ok extends StatefulWidget {
  const ok({Key? key}) : super(key: key);

  @override
  State<ok> createState() => _okState();
}

class _okState extends State<ok> {

  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          height: 160.0,
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width,
                height: 100.0,
                child: const Center(
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              Positioned(
                top: 80.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.5), width: 1),
                        color: Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.menu,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return next();
                              },
                            ));
                          },
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            print("your menu action here");
                          },
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            print("your menu action here");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
