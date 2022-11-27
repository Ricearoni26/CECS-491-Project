import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'account_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Crave',
          style: TextStyle( color:
            Colors.white,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition:
          CameraPosition(
            target:
            LatLng(33.77, -118.19),
            zoom: 15,
          ),
        )
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 250,
              child: UserAccountsDrawerHeader(
                currentAccountPictureSize: Size(150, 150),
                margin: EdgeInsets.all(0.0),
                accountEmail: Text('john.smith@gmail.com'),
                accountName: Text('John Smith'),
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.red,
                          Colors.orange,
                          Colors.yellow,
                        ],
                    ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Color(0xFFFFFFFF),
                  backgroundImage: null,
                ),
              ),
            ),
            ListTile(
              title: const Text('Account'),
              leading: const Icon(Icons.account_box),
              shape: const RoundedRectangleBorder(),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Notifications'),
              leading: const Icon(Icons.notifications),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Appearance'),
              leading: const Icon(Icons.display_settings),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountScreen(),
                  ),
                );
              },
            ),

            ListTile(
              title: const Text('Preference'),
              leading: const Icon(Icons.accessibility_new_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Help & Support'),
              leading: const Icon(Icons.help_center),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('About Us'),
              leading: const Icon(Icons.question_mark_outlined),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label:
          'notifications')
        ]
      ),
    );
  }
}