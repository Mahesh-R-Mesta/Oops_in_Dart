import 'dart:math';

import 'package:rxdart/rxdart.dart';

void main(){

  run();// PublishSubject<T> in rxDart
  // This one is pretty simple. This Subject 
  // allows sending data, error and done events 
  // to the listener. Here it will work with Sinks,
  //  which we were talking about before. See the example above:

  run2();////BehaviorSubject<T> class
  // This one is similar to the PublishSubject.
  //  It also allows sending data, error and done events to the listener,
  //   but the latest item that has been added to the subject will be sent to any 
  //   new listeners of the subject. But don’t you worry, after that, any new events 
  //   will be appropriately sent to the listeners. See the example above:

run3();////ReplaySubject<T> class
  // The ReplaySubject allow us the same: sending data, 
  // error and done events to the listener. But with a crucial difference here. 
  // As items are added to the subject, the ReplaySubject will store them and 
  // when the stream is listened to, those recorded items will be emitted to the 
  // listener. See the example above:
  // NAME(n:'JARI');
}


void run(){
  //  _subjectCounter = new BehaviorSubject<int>.seeded(this.initialCount); //initializes the subject with element already
  PublishSubject<int> subject = new PublishSubject<int>();
  subject.stream.listen((event) { //event listener
    print(event);
  });
getData(subject);
}


//BehaviorSubject<T> class
void run2(){
BehaviorSubject<String> subject2 = new BehaviorSubject<String>();
subject2.stream.listen((event) { 
  print('BehaviorSubject :::  '+event);
});
subject2.add('A');
subject2.add('B');
subject2.add('C');
subject2.add('D');
subject2.stream.listen((event) { 
  print('Behavior Second listener '+event);
});
}

void run3(){
ReplaySubject<double> subject3 =ReplaySubject<double>();
subject3.add(200.0);
subject3.add(300.0);
subject3.add(400.0);
subject3.add(500.0);
subject3.stream.listen((event) {
  print('ReplaySubject::'+event.toString());
});
}


void getData(PublishSubject<int> subject){
  var r =Random();
  for(int i=0;i<6;i++){
    subject.add(r.nextInt(21));
  }
    Future.delayed(Duration(seconds:10),(){
    subject.stream.listen((event) { //event listener 2
      print('I am Too Late'+event.toString());
    });
    subject.sink.add(200);
  });
}

class NAME{
  String n;
  NAME({this.n}){
    print(this.n);
  }
}