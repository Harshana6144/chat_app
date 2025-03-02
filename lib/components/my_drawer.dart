import "package:chat_app/pages/SettringsPage.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //logo
                DrawerHeader(
                  child: Center(
                    child: Icon(Icons.message,
                        color: Theme.of(context).colorScheme.primary, size: 40),
                  ),
                ),

                //home list title
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text("H O M E"),
                    leading: Icon(Icons.home),
                    onTap: () {
                      //pop the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),

                //setting list title
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    title: Text("S E T T I N G S"),
                    leading: Icon(Icons.settings),
                    onTap: () {
                      Navigator.pop(context);

                      //navigate to the setting page
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Settringspage(),
                          ));
                    },
                  ),
                ),
              ],
            ),

            //logout list title
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                title: Text("L O G O U T"),
                leading: Icon(Icons.logout),
                onTap: () {},
              ),
            ),
          ],
        ));
  }
}
