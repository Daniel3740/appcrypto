import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:appcrypto/models/tickets_model.dart';
import 'package:appcrypto/global/enviroments.dart';

class TicketsService with ChangeNotifier {
  TicketsModel? _ticketCoin;
  TicketsModel? get ticketCoin => _ticketCoin;
  set ticketCoin(TicketsModel? valor) {
    _ticketCoin = valor;
    notifyListeners();
  }

  Future getTickets() async {
    final url = Uri.parse(Environment.apiUrl);

    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      Map<String, dynamic> infoTickets = jsonDecode(resp.body);
      final ticketsResponse =
          ticketsModelFromJson(jsonEncode(infoTickets['data']));
      // debugPrint(
      //     'Informacion de tickets ${infoTickets['data'][0]} - Respuesta del body ${resp.body}');
      return ticketsResponse;
    }
  }
}
