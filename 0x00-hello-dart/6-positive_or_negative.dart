// check if number is positive or negative

void main(List<String> args) {
  int a = int.parse(args[0]);
  if(a == 0){
  print('${a} is zero');
}
if(a > 0) {
  print('${a} is positive');
}
if(a < 0) {
  print('${a} is negative');

}

}
