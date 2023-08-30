import 'dart:developer';

import 'package:mongo_app/config.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MONGODB {
  static var db, userCollection;
  static connect() async {
    db = await Db.create(mongo_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection("brands");
  }
}
