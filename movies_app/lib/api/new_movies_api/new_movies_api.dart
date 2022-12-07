import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import '../../models/movie_model/movie_model.dart';

class NewMoviesApi {
  static Future<Movie >fetchNewMovies() async {
    final response = await http
        .get(Uri.parse('https://imdb-api.com/en/API/InTheaters/k_9e0j20cd'));
    if(response.statusCode==200){
      log('Data Fetched');
      return Movie.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Fetch failed');
    }
  }
}
