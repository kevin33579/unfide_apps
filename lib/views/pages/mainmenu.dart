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
    MainMenu(),
    contactPsikolog(),
    MyAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildBody() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List data"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.record_voice_over_sharp),
            label: "Record",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "List Data",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "My Account",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: buildBody(),
    );
  }
}
