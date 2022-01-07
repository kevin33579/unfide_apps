part of 'pages.dart';

class JenisCeritaPsikolog extends StatefulWidget {
  const JenisCeritaPsikolog({Key? key}) : super(key: key);

  @override
  _JenisCeritaPsikologState createState() => _JenisCeritaPsikologState();
}

class _JenisCeritaPsikologState extends State<JenisCeritaPsikolog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd09484),
        title: Text("U N F I D E"),
      ),
      body: ListView(children: [
        Card(
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Text(
              'Pendidikan',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'berbagi cerita tentang pendidikan',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              child: Text('Pilih'),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, ListCeritaPendidikanPsikolog.routeName);
              },
            ),
          ]),
        ),
        Card(
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Text(
              'cinta dan logika',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'berbagi cerita tentang cinta dan logika',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              child: Text('Pilih'),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, ListCeritaCDLPsikolog.routeName);
              },
            ),
          ]),
        ),
        Card(
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Text(
              'kesehatan',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'berbagi cerita tentang kesehatan',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              child: Text('Pilih'),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, ListCeritaKesehatanPsikolog.routeName);
              },
            ),
          ]),
        ),
        Card(
          child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
            Text(
              'Horor',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'berbagi cerita tentang Horor',
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
              child: Text('Pilih'),
              onPressed: () {
                Navigator.pushReplacementNamed(
                    context, ListCeritaHororPsikolog.routeName);
              },
            ),
          ]),
        ),
      ]),
    );
  }
}
