import 'package:day_01/day_01.dart';
import 'package:test/test.dart';

void main() {
  group('Part One', () {
    test('Test if the parentheis are passed independent of order.', () {
      expect(calculateFloor('(())'), (0, 0));
      expect(calculateFloor('()()'), (0, 0));
      expect(calculateFloor('))(('), (0, 1));
    });
    test(
      'Test to see if the floor calculator returns positive, negative or zero.',
      () {
        expect(calculateFloor('((('), (3, 0));
        expect(calculateFloor(')))'), (-3, 1));
        expect(calculateFloor('((()))('), (1, 0));
      },
    );
    test(
      'Test to see if empty input returns 0.',
      () {
        expect(calculateFloor(''), (0, 0));
      },
    );
  });

  group('Part Two', () {
    test('Test if the parentheis are passed independent of order.', () {
      expect(calculateFloor('(())'), (0, 0));
      expect(calculateFloor('()()'), (0, 0));
      expect(calculateFloor('))(('), (0, 1));
    });
    test(
      'Test to see if the floor calculator returns positive, negative or zero.',
      () {
        expect(calculateFloor('((('), (3, 0));
        expect(calculateFloor(')))'), (-3, 1));
        expect(calculateFloor('((()))('), (1, 0));
      },
    );
  });
}
