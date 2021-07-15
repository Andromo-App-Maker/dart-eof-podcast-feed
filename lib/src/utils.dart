/// Production mode constant.
///
/// `true` when running a release build.
const bool isProduction = bool.fromEnvironment('dart.vm.product');

/// Prints [message] to the console, but only when running a debug build.
void debugPrint(String message) {
  if (!isProduction) {
    // ignore: avoid_print
    print(message);
  }
}
