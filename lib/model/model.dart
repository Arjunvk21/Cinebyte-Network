class Scriptmodel {
  String? scriptname;
  String? scriptdescription;
  String? Scriptgenre;

  Scriptmodel({
    required this.scriptname,
    required this.scriptdescription,
    required this.Scriptgenre,
  });

  Map<String, dynamic> tojson(id) => {
        'script name': scriptname,
        'script description': scriptdescription,
        'script genre': Scriptgenre
      };
  factory Scriptmodel.fromData(Map<String, dynamic> i) {
    return Scriptmodel(
        scriptname: i['script name'],
        scriptdescription: i['script description'],
        Scriptgenre: i['script genre']);
  }
}
