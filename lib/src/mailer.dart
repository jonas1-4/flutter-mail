import 'send_response.dart';

abstract class Mailer {
  /// Send an email
  /// Any implementation of this method should handle all potential errors,
  /// in order to prevent throwing error out of this method.
  Future<SendResponse> send(
      {String from,
      List<String> to = const [],
      List<String> cc = const [],
      List<String> bcc = const [],
      List<dynamic> attachments = const [],
      String subject,
      String html,
      String text});
}
