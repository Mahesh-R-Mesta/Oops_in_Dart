void main(){
Stream a = count();
print(a);
}

Stream<int> count() async* {
  int i=0;
  while(i<4){
    yield i++;
  }

}