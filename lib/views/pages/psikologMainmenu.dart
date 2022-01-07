part of 'pages.dart';

class PsikologMainMenu extends StatefulWidget {
  static const String routeName = "/mainmenuPsikolog";

  @override
  _PsikologMainMenuState createState() => _PsikologMainMenuState();
}

class _PsikologMainMenuState extends State<PsikologMainMenu> {
  CollectionReference notesCollection =
      FirebaseFirestore.instance.collection("notes");
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    JenisCeritaPsikolog(),
    ChatPsikolog(),
    ProfilePsikolog(),
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
              icon: ImageIcon(
                AssetImage('assets/icons/home.png'),
              ),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/konsul.png'),
              ),
              label: 'konsultasi',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/setting.png'),
              ),
              label: 'setting',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 0,
        ));
  }
}
