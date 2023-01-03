abstract class BaseError<T> {
  final T code;
  final String message;
  final Object? object;
  const BaseError({
    required this.code,
    required this.message,
    this.object,
  });
}

class DefaultError extends BaseError<String> {
  const DefaultError({
    required super.code,
    required super.message,
    super.object,
  });
}
