import 'send_response.dart';
import 'send_response_status.dart';
import 'mailer.dart';

class DummyMailer implements Mailer {
  @override
  Future<SendResponse> send(
      {String from,
      List<String> to = const [],
      List<String> cc = const [],
      List<String> bcc = const [],
      List<dynamic> attachments = const [],
      String subject,
      String html,
      String text,
      String template,
      Map<String, dynamic> options}) {
    return Future.sync(() {
      print('************************');
      print('from: $from');
      print('to: ' + to.join(", "));
      print('cc: ' + cc.join(", "));
      print('bcc: ' + bcc.join(", "));
      print('subject: $subject');
      print('html: $html');
      print('text: $text');
      print('template: $template');
      print('options: ' + options.toString());
      print('************************');
      return SendResponse(status: SendResponseStatus.SUCCESS);
    });
  }
}
