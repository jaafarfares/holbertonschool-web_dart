List<String> convertToF(List<double> temperaturesInC) {
  List<String> temperaturesInF = [];
  for (double tempInC in temperaturesInC) {
    double tempInFahrenheit = tempInC * 9 / 5 + 32;
    String formattedTemp = tempInFahrenheit.toStringAsFixed(2);
    temperaturesInF.add(formattedTemp);
  }
  return temperaturesInF;
}
