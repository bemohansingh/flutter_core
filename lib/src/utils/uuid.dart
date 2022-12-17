import 'package:uuid/uuid.dart';

class UniqueGenerator {
  static String getTimeBasedString() {
    return const Uuid().v1();
  }
}
