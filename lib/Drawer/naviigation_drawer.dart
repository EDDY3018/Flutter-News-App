import 'package:flutter/material.dart';
import 'package:flutter_news_app/screens/Home/home_screen.dart';

import '../auth/Login/login.dart';
import '../screens/Favorite/favorite.dart';
import '../screens/Profile/profile.dart';
import '../specs/colors.dart';
import 'drawerItem.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: BLACK4,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                name: 'Home',
                icon: Icons.home,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'My Account',
                icon: Icons.account_box_rounded,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profile(),
                      ));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Favourites',
                icon: Icons.favorite_outline,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Favorite(),
                      ));
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Log out',
                icon: Icons.logout,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        break;
    }
  }

  Widget headerWidget() {
    const url =
        'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Sefah Evento',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('info@eventz.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
