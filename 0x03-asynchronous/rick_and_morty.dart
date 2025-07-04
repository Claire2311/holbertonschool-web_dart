import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> printRmCharacters() async {
  try {
    final httpPackageUrl =
        Uri.parse('https://rickandmortyapi.com/api/character');
    final httpPackageInfo = await http.read(httpPackageUrl);

    final httpPackageJson =
        json.decode(httpPackageInfo) as Map<String, dynamic>;
    List results = httpPackageJson['results'];
    for (var i = 0; i < results.length; i++) {
      print(results[i]['name']);
    }
  } catch (err) {
    print('error caught: $err');
  }
}
