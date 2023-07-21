import 'dart:io';

int? readIntFromLineSafe() {
  return int.tryParse(stdin.readLineSync() ?? "");
}
