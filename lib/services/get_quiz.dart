import 'package:http/http.dart' as http;

Future<http.Response> getQuizService(
    int amount, int category, String difficulty) async {
  String url =
      'https://opentdb.com/api.php?amount=$amount&category=$category&difficulty=$difficulty&type=multiple';
  return await http.get(url);
}
