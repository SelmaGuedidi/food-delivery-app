import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/notification/notifications.dart';
import 'package:fooddelivery/cart.dart';
import 'package:fooddelivery/explore/explore.dart';
import 'package:fooddelivery/profile.dart';
import 'package:fooddelivery/saved.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  List<Widget> screens = [Explore(), Saved(), Notifications(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: currentIndex == 0
            ? AppBar(
                flexibleSpace: const Image(
                  image: AssetImage('assets/home_screen/Pattern.png'),
                  fit: BoxFit.cover,
                ),
                backgroundColor: Color.fromRGBO(240, 81, 147, 1),
                automaticallyImplyLeading: false,
                toolbarHeight: 120,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const Image(
                        image: AssetImage('assets/home_screen/MapPin.png'),
                      ),
                      const SizedBox(width: 10),
                      Text("Block B Phase 2 Johar Town,Lahore",
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ]),
                    const SizedBox(height: 15),
                    Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0)),
                        child: Center(
                            child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            fillColor: Colors.white,
                            alignLabelWithHint: false,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            hintText: "Search...",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          style: TextStyle(fontSize: 16.0),
                        )))
                  ],
                ),
              )
            : null,
        body: screens[currentIndex],
        floatingActionButton: currentIndex == 0
            ? Badge(
                padding: const EdgeInsets.all(8),
                badgeColor: Colors.black,
                badgeContent: Text(
                  "4",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Cart(),
                        ));
                  },
                  child: const Icon(Icons.shopping_cart_outlined),
                  backgroundColor: const Color.fromRGBO(240, 81, 147, 1),
                ))
            : null,
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: const Color.fromRGBO(240, 81, 147, 1),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
            ),
          ],
        ));
  }
}
