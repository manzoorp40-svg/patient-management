class RepoPatient {
  List<Map<String, String>> getListOfPatient() {
    List<Map<String, String>> listPatient = [
      {"name":"Shafik Shaikh", "mobile":"9270007550", "dob":"1991-08-23"},
      {"name":"Zahed Patel", "mobile":"9503838293", "dob":"2005-08-23"},
      {"name":"Rafik Shaikh", "mobile":"9763786250", "dob":"1990-08-23"},
      {"name":"Riyan Patel", "mobile":"7972191486", "dob":"2006-08-23"},
      {"name":"Ridan Patel", "mobile":"9822665577", "dob":"2010-08-23"},
      {"name":"Sameer Pathan", "mobile":"9278855008", "dob":"1999-08-23"},
    ];
    return listPatient;
  }
}