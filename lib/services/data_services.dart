part of 'services.dart';

class NotesServices {
  static CollectionReference datasCollection =
      FirebaseFirestore.instance.collection("datas");
  static DocumentReference datasDocument;

  static Reference ref;
  static UploadTask uploadTask;

  static Future<bool> addData(Datas datas) async {
    await Firebase.initializeApp();
    String dateNow = ActivityServices.dateNow();
    datasDocument = await datasCollection.add({
      'datasId': datas.dataId,
      'datasName': datas.dataName,
      'datasData': datas.dataData,
      'createdAt': dateNow,
      'updatedAt': dateNow,
    });
    if (datasDocument != null) {
      datasCollection.doc(datasDocument.id).update({});
      return true;
    } else {
      return false;
    }
  }
}
