import 'dart:async';
import 'dart:core';
import 'dart:io';//File Operation
import 'dart:convert';//provide json and utf8 and base64
import 'dart:developer' as developers;
import 'dart:math';
import 'dart:isolate';
import 'package:http/http.dart' as http;


void main(){
run();
setData();
jsons();
doMath();
doDeveloperDo();
writeFile();
getData();
}

void run() async {
print(await sendData());
}
//////////////////////dart:async////////////////////////
//Future
Future<int> sendData() async{
return Future.delayed(Duration(seconds:3),(){
return 12;
});

}
//Stream
//////////////////////dart:core//////////////

void setData(){
  int a=10;
  String name;
  bool isTrue;

  var strings = StringBuffer();//Created String Buffer
  strings.write('This is now Buffering String');//Write on String
  print(strings);
  String newSt='Hello';
  print(newSt.split('').reversed.join());//String Operations
  
  var number = RegExp(r'\d+');
 print( number.hasMatch('12343'));
 DateTime t =DateTime.now();
 print(t);
 var dartlang = Uri.parse('http://dartlang.org/');
 print(dartlang);
 var k=1;
 var b=2;
 assert(k!=b,'Aiyyo Ondu Rupayee');
}

//Example for dart:covert /////////////////////////
void jsons(){
 var a = jsonEncode({'name':'Mayya','age':22});
 var c = json.decode(a);
 var b = utf8.encode(a);
 print(b);
 var r = utf8.decode(b);
}
// var lineNumber = 1;
// var stream = File('quotes.txt').openRead();

// stream.transform(utf8.decoder)
//       .transform(const LineSplitter())
//       .listen((line) {
//         if (showLineNumbers) {
//           stdout.write('${lineNumber++} ');
//         }
//         stdout.writeln(line);
//       });

////////////////////dart:math//////////

doMath() {
 print( pow(pi,2)* cos(40) * ln10 );
}

doDeveloperDo(){
  developers.log('This is Developer');
  developers.debugger(when:false,message:'Aiyoo Its Equal');
  print('May be Above Code would block me');
}
////////////////Dart:io///////////////////
writeFile()async{
  File mFile = File('details.csv');             //File
  mFile.writeAsString('A,B,C,D,E\na,b,c,d,e\n');
//////////////////////////////////////////////////////////FileSytemEntity///////
//   FileSystemEntity.isDirectory(myPath).then((isDir) {
//   if (isDir) {
//     print('$myPath is a directory');
//   } else {
//     print('$myPath is not a directory');
//   }
// });
/////////////////////////////////////////////////////// Process
// Process.start('ls', ['-R', 'web']).then((process) {
//   stdout.addStream(process.stdout);
//   stderr.addStream(process.stderr);
//   process.exitCode.then(print);
// });
/////////////////////////Web Scoket///Used for accessing portb or api

//The HttpServer class provides the basic functionality for implementing an HTTP server.
// For some higher-level building-blocks, we recommend that you try the shelf pub package,
 //which contains a set of high-level classes that, together with the HttpServer class in this library,
 // make it easier to implement HTTP servers.

// runZoned(() async {
//   var server = await HttpServer.bind('127.0.0.1', 4040);
//   server.listen((HttpRequest req) async {
//     if (req.uri.path == '/ws') {
//       var socket = await WebSocketTransformer.upgrade(req);
//       socket.listen(handleMsg);
//     }
//   });
// }, onError: (e) => print("An error occurred."));
// var socket = await WebSocket.connect('ws://127.0.0.1:4040/ws');
// socket.add('Hello, World!');
//////////////////////////////////Socket and Sever Socket///////////////

// Clients and servers use Sockets to communicate using the TCP protocol. 
//Use ServerSocket on the server side and Socket on the client.
//  The server creates a listening socket using the bind() method and then listens for incoming connections on the socket. For example:
//

//On Server Side..........................................
// ServerSocket.bind('127.0.0.1', 4041)
//   .then((serverSocket) {
//     serverSocket.listen((socket) {
//       socket.transform(utf8.decoder).listen(print);
//     });
//   });

//On client Side/....................................
//Socket.connect('127.0.0.1', 4041).then((socket) {
//   socket.write('Hello, World!');
// });
}

//dart:isolate
//Concurrent programming using isolates: 
//independent workers that are similar to threads but don't share memory, communicating only via messages.

//dart:typed_data
//Lists that efficiently handle fixed sized data (for example, unsigned 8 byte integers) and SIMD numeric types.
//Ex: Float32List
//Ex:Float32x4List
//Ex:Int16List

Future<void> getData() async {
http.Response s = await http.get(Uri.http('www.google.com', 'Rocket'));
print(s.statusCode);
print(s.body);
}