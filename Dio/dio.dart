import 'package:dio/dio.dart';

void main(){
dioApi();


}

var url ='https://reqres.in';
void dioApi() async
{

// Response response = await Dio().get('http://www.google.com');
// print(response.data.toString());

var dio =Dio();
var response1 = await dio.get(url+'/api/users?',queryParameters: {'page':2});
//https://reqres.in/api/users?page=2
print(response1.data.toString());

var resp3 = await dio.post(url+'/api/users',data:{
    "name": "morpheus",
    "job": "leader"
} );
print(resp3.data);
print(resp3.data.runtimeType);
var img = dio.download('https://cdn4.buysellads.net/uu/1/41334/1550855391-cc_dark.png','./imge.png');
}