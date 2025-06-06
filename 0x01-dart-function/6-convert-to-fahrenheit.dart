List<double> convertToF(List<double> temperaturesInC) {
  var temparaturesInF = temperaturesInC.map(
    (temp) => double.parse(((temp * 9 / 5) + 32).toStringAsFixed(2)),
  );

  return temparaturesInF.toList();
}
