import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class CrudPage extends StatefulWidget {
  const CrudPage({super.key});
  @override
  State<CrudPage> createState() => _CrudPageState();
}

class _CrudPageState extends State<CrudPage> {
  late Database database;
  late String _path;

  @override
  void initState() {
    _createDB();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 14 - SQlite'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                _insertDB();
              },
              child: Text('INSERT'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, foregroundColor: Colors.white
              ),
            ),
            ElevatedButton(
              onPressed: (){
                _removeDB();
              },
              child: Text('REMOVE'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, foregroundColor: Colors.white
              ),
            ),
            ElevatedButton(
              onPressed: (){
                _updateDB();
              },
              child: Text('UPDATE'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, foregroundColor: Colors.white
              ),
            ),
            ElevatedButton(
              onPressed: (){
                _showDB();
              },
              child: Text('SHOW'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, foregroundColor: Colors.white
              ),
            ),
          ],
        )
      ),
    );
  }
  void _createDB() async{
    var dbpath = await getDatabasesPath();
    _path = '{$dbpath}my_db.db';

    database = await openDatabase(_path,version: 1,
    onCreate: (Database db, int version) async{
      await db.execute(
        'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, nickname TEXT)'
      );
    });
  }
  void _insertDB() async{
    await database.transaction((txn) async{
      int reg1 = await txn.rawInsert(
        'INSERT INTO Test(name, nickname) VALUES("David","david123")'
      );
      print('inserted1: $reg1');

      int reg2 = await txn.rawInsert(
        'INSERT INTO Test(name, nickname) VALUES(?,?)',
        ['Ana','ana123']
      );
      print('inserted2: $reg2');
    });
  }
  void _removeDB() async{
    int rem = await database.rawDelete(
      'DELETE FROM Test WHERE name = ?',
      ['David']
    );
    print('deleted: $rem');
  }
  void _updateDB() async{
    int upd = await database.rawUpdate(
      'UPDATE Test SET nickname = ? WHERE name = ?',
      ['frijo','Ana']
    );
    print('updated: $upd');
  }
  void _showDB() async{
    List<Map> show = await database.rawQuery('SELECT * FROM Test');
    print(show);
  }
}