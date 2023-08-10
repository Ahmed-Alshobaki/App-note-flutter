import 'package:sqflite/sqflite.dart';

import '../../../constant/public.dart';
import '../database/databaseaabstract.dart';
import '../database/databaseprovider.dart';
import '../model/notes.dart';

class databasecontroller extends databaseabstract<Notes>{
  Database  db = databaseprovider().data;
  @override
  Future<int> create(obj)async {
    // TODO: implement create
   int id = await db.insert(ManagerConstants.tableName, obj.toMap());
   return id;
  }

  @override
  Future<bool> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<bool> update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<Notes>> readd() {
    // TODO: implement readd
    throw UnimplementedError();
  }

  @override
  Future<Notes?> showw(int id) {
    // TODO: implement showw
    throw UnimplementedError();
  }




}