import 'package:encrypt/encrypt.dart';

extension EncryptString on String {
  String encryptAES({String keyString = "12345678901234567890123456789012"}) {
    final key = Key.fromUtf8(keyString);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(this, iv: iv);
    return encrypted.base64;
  }

  String decryptAES({String keyString = "12345678901234567890123456789012"}) {
    final key = Key.fromUtf8(keyString);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    final decrypted = encrypter.decrypt(Encrypted.from64(this), iv: iv);
    return decrypted;
  }
}
