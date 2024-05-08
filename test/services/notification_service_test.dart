import 'package:flutter_test/flutter_test.dart';
import 'package:campus_ease/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('NotificationServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
