class NotesUrl {
  const NotesUrl._();

  static const String ip = "46.29.160.197:1337";

  static Uri getNote = Uri.parse("http://$ip/notes/");

  static Uri createNote = Uri.parse("http://$ip/notes/create/");

  static Uri updateNote(id) => Uri.parse("http://$ip/notes/$id/update/");

  static Uri deleteNote(id) => Uri.parse("http://$ip/notes/$id/delete/");
}
