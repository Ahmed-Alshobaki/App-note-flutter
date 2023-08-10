import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../../constant/public.dart';

class databaseprovider{




















  static final databaseprovider _instance= databaseprovider._instance;
  databaseprovider._init();
  late Database  _data;
  factory databaseprovider(){
    return _instance;
  }
  Database get  data=>_data;


  Future<void> init() async{
    Directory   direction = await getApplicationDocumentsDirectory();
    String path = join(direction.path, ManagerConstants.databaseName);
    _data = await openDatabase(path, version: ManagerConstants.version,
     onCreate: (data,version){
      data.execute('''
      CREATE TABLE  ${ManagerConstants.tableName}(
        ${ManagerConstants.id} INTEGER PRIMARY KEY AUTOINCREMENT,
        ${ManagerConstants.tital} TEXT NOT NULL,
        ${ManagerConstants.body} TEXT ,
      )
      ''');
    },
    onOpen: (data){},
      onUpgrade: (data,oldversion,newversion){
      data.execute('''
      DROP TABLE IF EXISTS ${ManagerConstants.tableName}
      ''');
      },

    );
  }
}