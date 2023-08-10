import '../../../constant/public.dart';

class Notes{
  late int id ;
  late String tital;
  late String body;
  Notes();

  Notes.fromMap(Map<String, dynamic> map) {
    id = map[ManagerConstants.id];
    tital = map[ManagerConstants.tital];
    body = map[ManagerConstants.body];
  }


    Map<String, dynamic>toMap(){

    return <String, dynamic>{

      ManagerConstants.tital : tital,
      ManagerConstants.body : body,

    };
  }


}