part of 'pages.dart';

class contactPsikolog extends StatefulWidget {

  @override
  _contactPsikologState createState() => _contactPsikologState();
}

class _contactPsikologState extends State<contactPsikolog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SESI KONSULTASI"),
      ),
      body:Container(

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(

        endRadius: 75,
        glowColor: Theme.of(context).primaryColor,
        child: FloatingActionButton(
          child: Icon(Icons.add, size: 36),
          onPressed:(){

          },
        ),
      ),
    );
  }
}
