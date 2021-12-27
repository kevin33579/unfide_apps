part of 'widgets.dart';

class listCard extends StatefulWidget {
  final Datas datas;

  listCard({required this.datas});

  @override
  _listCardState createState() => _listCardState();
}

class _listCardState extends State<listCard> {
  @override
  Widget build(BuildContext context) {
    Datas datas = widget.datas;

    return Card(
      elevation: 1,
      margin: EdgeInsets.all(8),
      child: Container(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            radius: 24.0,
          ),
          title: Text(
            datas.dataName,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            maxLines: 1,
            softWrap: true,
          ),
          subtitle: Text(
            datas.dataData,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
            maxLines: 1,
            softWrap: true,
          ),
          trailing: IconButton(
            icon: Icon(CupertinoIcons.trash_circle),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
