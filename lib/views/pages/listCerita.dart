part of 'pages.dart';

class ListCerita extends StatefulWidget {
  @override
  _ListCeritaState createState() => _ListCeritaState();
}

class _ListCeritaState extends State<ListCerita> {
  CollectionReference notesCollection =
  FirebaseFirestore.instance.collection("datas");

  Widget buildBody() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: StreamBuilder<QuerySnapshot>(
          stream: notesCollection.snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text("Failed to load data");
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return ActivityServices.loadings();
            }
            return new ListView(
              children: snapshot.data.docs.map((DocumentSnapshot doc) {
                Datas datas = new Datas(
                  // doc['notesId'].data(),
                  // doc['notesName'].data(),
                  // doc['notesData'].data(),
                  // doc['createdAt'].data(),
                  // doc['updatedAt'].data(),
                  doc['datasId'],
                  doc['datasName'],
                  doc['datasData'],
                  doc['createdAt'],
                  doc['updatedAt'],
                );
                return listCard(datas: datas);
              }).toList(),
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List data"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: false,
      body: buildBody(),
    );
  }
}
