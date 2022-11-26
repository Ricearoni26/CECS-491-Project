import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,

              ),
              child: Text('Settings',
                style: TextStyle( color:
                  Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              shape: RoundedRectangleBorder(),
            ),
            ListTile(
              title: Text('Account'),
              leading: Icon(Icons.account_box),
            ),
          ],
        ),
      ),
    );
  }
}
