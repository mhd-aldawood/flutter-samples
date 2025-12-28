import 'dart:convert';
import "package:http/http.dart";
import 'package:intl/intl.dart';

class WorldTime {
  String? location;
  String? time;
  String? flag;
  String? url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    Response response_ = await get(
      Uri.parse('https://timeapi.io/api/Time/current/zone?timeZone=${url}'),
    );
    Map response = jsonDecode(response_.body);
    final String dateTime = response['dateTime']; // ✅ correct key
    final DateTime now = DateTime.parse(dateTime);
    // time = now.toString();
    time=DateFormat.jm().format(now);

  }
}
