import 'package:uuid/uuid.dart';

class Generate {
  static String timeBasedUniqueString() {
    return const Uuid().v1();
  }
}
