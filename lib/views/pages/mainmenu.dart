part of 'pages.dart';

class MainMenu extends StatefulWidget {
  static const String routeName = "/mainmenu";

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  CollectionReference notesCollection =
      FirebaseFirestore.instance.collection("notes");
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    JenisCerita(),
    contactPsikolog(),
    MyAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.android),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_comment),
              label: "chat Psikolog",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "My Account",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
        ));
  }
}
