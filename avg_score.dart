void main() {
  Map<String, List<int>> student = {
    "Faisal": [43, 45, 48],
    "Reza": [50, 55, 60],
    "Kawsar": [65, 70, 75],
  };

  Map<String, double> avg = {};
  for (var entry in student.entries) {
    var name = entry.key;
    var scores = entry.value;
    var total = 0;
    for (var score in scores) {
      total += score;
    }
    avg[name] = total / scores.length;
  }

  avg.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value))
    ..forEach((entry) => print('"${entry.key}": ${entry.value},'));
}
