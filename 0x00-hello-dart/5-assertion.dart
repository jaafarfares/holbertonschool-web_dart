// in order to make it check if the number is bigger or equal to 80 print You Passed otherwise the output should be "..."

void main(List<String> args) {
  int a = int.parse(args[0]);
  switch(a) { 
   case <= 79: { 
      print('Uncaught Error: Assertion failed: "The score must be bigger or equal to 80');
   } 
   break; 
  
   default: { 
      print('You Passed');
   } 
   break; 
}
}
