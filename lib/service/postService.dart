  
import 'package:http/http.dart' as http;



class PostService{

 Future<http.Response> getData() async{
   final response = await  http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
   return response;
 }

}