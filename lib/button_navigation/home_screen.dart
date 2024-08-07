import 'package:flutter/material.dart';
import 'package:send_data/drawer/pekerjaan.dart';
import 'package:send_data/drawer/todotext.dart';
import 'package:send_data/models/user_models.dart';

class HomeScreen extends StatefulWidget {
  final UserModels user;

  const HomeScreen({
    super.key,
    required this.user,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            globalKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.account_circle,
            size: 30,
          ),
        ),
        elevation: 8.0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Email Saya Adalah ${widget.user.email}",
            ),
          ],
        ),
      ),
      drawer: Drawer(
        width: 250,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Rifai Ahmad",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "UINSU",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Material(
              elevation: 8.0,
              child: ListTile(
                leading: const Icon(
                  Icons.work,
                ),
                title: const Text(
                  "Pekerjaan",
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Pekerjaan(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Material(
              elevation: 8.0,
              child: ListTile(
                leading: const Icon(
                  Icons.calendar_month_rounded,
                ),
                title: const Text(
                  "Kalender",
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Todotext(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
