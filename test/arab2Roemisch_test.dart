import 'package:roemische_zahlen/arab2Roemisch.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('roemischeZahlen', () {
    expect(roemischeZahlen(4), 'IV');
    expect(roemischeZahlen(5), 'V');
    expect(roemischeZahlen(999), 'CMXCIX');
    expect(roemischeZahlen(4999), 'MMMMCMXCIX');
    expect(roemischeZahlen(44), 'XLIV');
    expect(roemischeZahlen(444), 'CDXLIV');
    expect(roemischeZahlen(2022), 'MMXXII');
    expect(roemischeZahlen(1), 'I');
    expect(roemischeZahlen(1000), 'M');
    expect(roemischeZahlen(333), 'CCCXXXIII');
  });
}
