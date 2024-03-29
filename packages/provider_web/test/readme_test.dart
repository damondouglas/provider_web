import 'dart:io';

import 'package:flutter_web_test/flutter_web_test.dart';

void main() {
  test('root/package/provider/README.md and root/README.md are identical',
      () async {
    final root = await File.fromUri(Uri.parse(
            '${Directory.current.parent.parent.parent.path}/README.md'))
        .readAsString();
    final local = await File.fromUri(
            Uri.parse('${Directory.current.parent.path}/README.md'))
        .readAsString();

    expect(root, equals(local));
  });
}
