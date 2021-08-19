import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:path/path.dart' as path;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:path/path.dart';

// class profileData {
//   //final String id;
//   final String Name;
//   final String Email;
//   final String Mobile;
//   final String pincode;
//   final String state;
//
//   profileData(
//       {@required this.Name,
//       @required this.Email,
//       @required this.Mobile,
//       @required this.pincode,
//       @required this.state});
// }

class profile with ChangeNotifier {
  String Name = "";
  String Email = "";
  String Mobile = "";
  String Pincode = "";
  String State = "";
  String link = "";
  bool isloading = true;

  final user = FirebaseAuth.instance.currentUser;

  Future<void> addProfile(String Name, String Email, String Mobile,
      String Pincode, String State) async {
    print(link);
    print ("hednfdmbdmng nmf fvcvc");
    final ref = await FirebaseDatabase.instance.reference().child("userData");

    print(ref);
    ref.child(user.uid).set({
      "name": Name,
      "email": Email,
      "mobile no": Mobile,
      "pincode": Pincode,
      "state": State,
      "imageLink": link
    });

    notifyListeners();
  }

  Map<String, String> mp;

  Future<void> fetchandsetproduct() async {


    final fb = await FirebaseDatabase.instance;
    final ref = fb.reference().child("userData");
    final extracteddata = user.uid;
    if (extracteddata == null) {
      return;
    }

    ref.child(extracteddata).once().then((DataSnapshot details) {
      Name = details.value["name"];
      Email = details.value["email"];
      Mobile = details.value["mobile no"];
      Pincode = details.value["pincode"];
      State = details.value["state"];
      link = details.value["imageLink"];

    }).then((_) {isloading = false;});

    notifyListeners();
  }

  Future<void> takePicture() async {
    File _imageFile;
    final pickedFile =
        await ImagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);
    if (pickedFile == null) return;

    _imageFile = File(pickedFile.path);

    //final appDir= await syspaths.getApplicationDocumentsDirectory();
    //inal fileName = path.basename(ImageFile.path);

    // _savedImage =  await ImageFile.copy('${appDir.path}/$fileName');

    final fileName = path.basename(_imageFile.path);
    firebase_storage.Reference ref =
        firebase_storage.FirebaseStorage.instance.ref().child(fileName);

    firebase_storage.UploadTask uploadTask = ref.putFile(_imageFile);
    firebase_storage.TaskSnapshot taskSnapshot =
        await uploadTask.whenComplete(() => print("Done"));

    taskSnapshot.ref.getDownloadURL().then((value) async{
      print("Done2:$value");


      final reff = await FirebaseDatabase.instance.reference().child("userData");

      print(ref);
      reff.child(user.uid).update({
        "imageLink": value
      });







    });















    notifyListeners();





  }
}
