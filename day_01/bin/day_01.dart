import 'package:day_01/day_01.dart' as day_01;

void main(List<String> arguments) {
  final (int, int) output = day_01.calculateFloor(arguments[0]);
  print('First Entered Basement: ${output.$1}!');
  print('Ended in floor: ${output.$2}!');
}
