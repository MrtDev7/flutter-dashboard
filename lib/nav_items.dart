import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavItems extends StatefulWidget {
  @override
  _NavItemsState createState() => _NavItemsState();
}

class _NavItemsState extends State<NavItems> {
  Color iniColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // nav header
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 35),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'ReDeV',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // items
          Column(
            children: [
              NavItem(
                active: true,
                icon: CupertinoIcons.home,
                title: 'Home',
              ),
              NavItem(
                icon: CupertinoIcons.folder,
                title: 'Classes',
              ),
              NavItem(
                icon: CupertinoIcons.book,
                title: 'Resourses',
              ),
              NavItem(
                icon: CupertinoIcons.rectangle_stack,
                title: 'Learning Plan',
              ),
              NavItem(
                icon: CupertinoIcons.chat_bubble,
                title: 'Chat',
              ),
              NavItem(
                icon: CupertinoIcons.settings,
                title: 'Setting',
              ),
            ],
          ),

          Container(
            height: 200,
            width: 200,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Upgrade To Pro ',
                          style: const TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'for more resources',
                          style: const TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Material(
                            color: Colors.blue,
                            child: InkWell(
                              onTap: () => print('upgrade'),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                child: Text(
                                  'Upgrde',
                                  style: TextStyle(color: Colors.white),
                                ),
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 60,
                    child: FlutterLogo(
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool active;

  const NavItem({Key key, this.icon, this.title, this.active = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: () => print('hksdf'),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            border: active
                ? Border(right: BorderSide(color: Colors.blue, width: 4))
                : Border(),
          ),
          height: 35,
          child: Row(
            children: [
              Icon(
                icon,
                color: active ? Colors.blue : Colors.grey,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: active ? Colors.blue : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
