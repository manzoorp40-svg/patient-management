class RepoAppointment {
  List<Map<String, String>> getListOfAppointment() {
    List<Map<String, String>> listAppointment = [
      {"Date":"08-01-2025", "Symptoms":"Dehydration"},
      {"Date":"12-01-2025 ", "Symptoms":"Fever"},
      {"Date":"20-01-2025 ", "Symptoms":"Cold"},
      {"Date":"30-01-2025 ", "Symptoms":"Stomach Pain"},
      {"Date":"01-01-2025 ", "Symptoms":"Dehydration"},
      {"Date":"07-01-2025 ", "Symptoms":"Diarrhea"},
      {"Date":"26-02-2025 ", "Symptoms":"Acidity"},
    ];
    return listAppointment;
  }
}