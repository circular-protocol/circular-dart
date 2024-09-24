import 'package:circular_api/circular_api.dart';
import 'package:test/test.dart';

void main() async {
  final circular = CircularApi();

  test('get blockchains', () async {
    final blockchains = await circular.getBlockchains();
    expect(blockchains, isNotNull);
  });
}
