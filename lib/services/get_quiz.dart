import 'package:http/http.dart' as http;

getQuiz(int no, int category, String difficulty, String type) async {
  var url =
      'https://opentdb.com/api.php?amount=$no&category=$category&difficulty=$difficulty&type=$type';
  var response = await http.get(url);
  print(response.body);
}
