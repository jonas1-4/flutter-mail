import 'send_response_status.dart';

class SendResponse {
  final SendResponseStatus? status;
  final String message;

  SendResponse({this.status, this.message = ''});
}
