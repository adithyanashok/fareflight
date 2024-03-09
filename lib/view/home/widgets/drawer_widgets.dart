import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {
  final IconData iconData;
  final String text;

  const DrawerItem({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.iconData,
              size: 28,
              color: const Color.fromARGB(255, 109, 109, 109),
            ),
            const SizedBox(width: 30),
            Text(
              widget.text,
              style: const TextStyle(
                color: Color.fromARGB(255, 109, 109, 109),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 210,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bluebg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
          ),
          child: const Center(
            child: Text(
              "LOGIN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      width: 320,
      child: ListView(
        children: const [
          DrawerHeaderWidget(),
          DrawerItem(
            iconData: Icons.settings,
            text: 'Settings',
          ),
          DrawerItem(
            iconData: Icons.help_outline,
            text: 'Support',
          ),
          DrawerItem(
            iconData: Icons.question_answer_outlined,
            text: 'FAQ',
          ),
          DrawerItem(
            iconData: Icons.star,
            text: 'Rate this app',
          ),
          DrawerItem(
            iconData: Icons.share,
            text: 'Share',
          ),
          DrawerItem(
            iconData: Icons.priority_high_outlined,
            text: 'About Us',
          ),
        ],
      ),
    );
  }
}
