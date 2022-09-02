import 'package:roemische_zahlen/roemisch2Arab.dart';
import 'package:test/test.dart';

void main() {
  test('arabischeZahl', () {
    expect(arabischeZahl('IV'), 4);
    expect(arabischeZahl('V'), 5);
    expect(arabischeZahl('CMXCIX'), 999);
    expect(arabischeZahl('MMMMCMXCIX'), 4999);
    expect(arabischeZahl('XLIV'), 44);
    expect(arabischeZahl('CDXLIV'), 444);
    expect(arabischeZahl('MMXXII'), 2022);
    expect(arabischeZahl('I'), 1);
    expect(arabischeZahl('M'), 1000);
    expect(arabischeZahl('CCCXXXIII'), 333);
  });
}
