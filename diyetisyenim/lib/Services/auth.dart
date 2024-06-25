import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServis {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> GirisYap(String email, String sifre) async {
    var user =
    await _auth.signInWithEmailAndPassword(email: email, password: sifre);
    return user.user;
  }

  CikisYap() async {
    return await _auth.signOut();
  }

  createPerson(
      String isim, String email, String sifre, String telefonno) async {
    var user = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: sifre,
    );
    await _firestore.collection("kullanici").doc(user.user!.uid).set({
      'userName': isim,
      'email': email,
      'telefon no': telefonno,
    });
  }

 EkleVeri(int boy, int kilo , int yas) async {

   await _firestore.collection("kullanici").doc().set({
     'kilo': kilo,
     'boy': boy,
     'yas': yas,
   });
 }


}
