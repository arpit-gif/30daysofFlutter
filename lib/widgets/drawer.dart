import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://static.abplive.com/wp-content/uploads/2019/10/05084908/Hrithik-Roshan-site.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
               
                accountName: Text("Arpit Verma"),
                accountEmail: Text("arpitverma2008@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                  ),
                  )
              ),  
              ListTile(
                leading: Icon(CupertinoIcons.home,
                color: Colors.white,
                ),
                title: Text("Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white
                ),
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled,
                color: Colors.white,
                ),
                title: Text("Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white
                ),
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.mail,
                color: Colors.white,
                ),
                title: Text("Email",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white
                ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
