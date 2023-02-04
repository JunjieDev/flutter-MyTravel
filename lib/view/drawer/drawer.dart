import 'package:flutter/material.dart';
import 'package:flutter_travel/view/drawer/pages/favourites.dart';
import 'package:flutter_travel/view/drawer/pages/user.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('My Drawer Home'),
      backgroundColor: Colors.blue.shade700,
    ),
    drawer: myNavigationDrawer(context),
  );

  Widget myNavigationDrawer(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context), 
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Material(
    color: Colors.blue.shade700,
    child: InkWell(
      onTap: () {
        //Close navigator drawer before
        Navigator.pop(context);

        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const User(),
        ));
      },
      child: Container(
        color: Colors.blue.shade700,
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24, 
        ),
        child: Column(
          children: const <Widget>[
            CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage(
                'assets/images/drawer/small.jpg',
              ),
            ),
            Text(
              'Sara Abs',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            Text(
              'Sarah@abs.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
 
  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child:  Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const MyDrawer(),
            )),
        ),
        ListTile(
          leading: const Icon(Icons.favorite_border),
          title: const Text('Favourites'),
          onTap: () {
            //Close navigator drawer before
            Navigator.pop(context);

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Favourites(),
            ));
          }
        ),
        ListTile(
          leading: const Icon(Icons.workspaces_outline),
          title: const Text('Workflow'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.update),
          title: const Text('Updates'),
          onTap: () {},
        ),
        const Divider(color: Colors.black54),
        ListTile(
          leading: const Icon(Icons.account_tree_outlined),
          title: const Text('Plugins'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.notifications_outlined),
          title: const Text('Notifications'),
          onTap: () {},
        ),
      ],
    ),
  );
}
