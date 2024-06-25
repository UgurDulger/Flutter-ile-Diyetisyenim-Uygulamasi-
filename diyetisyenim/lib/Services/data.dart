import 'package:cloud_firestore/cloud_firestore.dart';

var veritabani = FirebaseFirestore.instance;


Future<List<Map>> kullanicilar() async {
  List<Map> kullanicilar = [];
  Map kullanici;
  await veritabani.collection("kullanici").get().then((event) {
    for (var doc in event.docs) {
      kullanici = doc.data();
      kullanici["id"] = doc.id;
      kullanicilar.add(kullanici);
    }
  });
  return kullanicilar;
}

Future<Map> kullaniciBilgileriGetir(String email) async {
  Map userId = Map.unmodifiable({"k1": "value"});
  await veritabani
      .collection("kullanici")
      .where("email", isEqualTo: email)
      .get()
      .then(
        (value) {
      value.docs.forEach(
            (result) {
          userId = result.data();
          userId['id'] = result.id;
        },
      );
    },
  );
  return userId;
}




