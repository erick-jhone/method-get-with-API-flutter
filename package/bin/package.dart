import 'dart:convert';
import 'package:http/http.dart' as http;

Future main() async {
 final books = await fetch();
  final names = books.map((book) => book["name"]).toList();
  print(books);
}

Future<List<dynamic>> fetch() async {
  var url = Uri.parse('https://www.abibliadigital.com.br/api/books');
  var response = await http.get(url);
  var json = jsonDecode(response.body);
  return json;
}

