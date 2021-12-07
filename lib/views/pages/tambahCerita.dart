part of 'pages.dart';

class TambahCerita extends StatefulWidget {
  static const String routeName = "/tambahcerita";

  @override
  _TambahCeritaState createState() => _TambahCeritaState();
}

class _TambahCeritaState extends State<TambahCerita> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextFormField(
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Ceritakan apa yang terjadi?'
          ),
        )
    );
  }
}
