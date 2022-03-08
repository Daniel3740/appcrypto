// To parse this JSON data, do
//
//     final ticketsModel = ticketsModelFromJson(jsonString);

import 'dart:convert';

List<TicketsModel> ticketsModelFromJson(String str) => List<TicketsModel>.from(
    json.decode(str).map((x) => TicketsModel.fromJson(x)));

String ticketsModelToJson(List<TicketsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TicketsModel {
  TicketsModel({
    this.id,
    this.symbol,
    this.name,
    this.nameid,
    this.rank,
    this.priceUsd,
    this.percentChange24H,
    this.percentChange1H,
    this.percentChange7D,
    this.priceBtc,
    this.marketCapUsd,
    this.volume24,
    this.volume24A,
    this.csupply,
    this.tsupply,
    this.msupply,
  });

  String? id;
  String? symbol;
  String? name;
  String? nameid;
  int? rank;
  String? priceUsd;
  String? percentChange24H;
  String? percentChange1H;
  String? percentChange7D;
  String? priceBtc;
  String? marketCapUsd;
  double? volume24;
  double? volume24A;
  String? csupply;
  String? tsupply;
  String? msupply;

  factory TicketsModel.fromJson(Map<String, dynamic> json) => TicketsModel(
        id: json["id"],
        symbol: json["symbol"],
        name: json["name"],
        nameid: json["nameid"],
        rank: json["rank"],
        priceUsd: json["price_usd"],
        percentChange24H: json["percent_change_24h"],
        percentChange1H: json["percent_change_1h"],
        percentChange7D: json["percent_change_7d"],
        priceBtc: json["price_btc"],
        marketCapUsd: json["market_cap_usd"],
        volume24: json["volume24"].toDouble(),
        volume24A: json["volume24a"].toDouble(),
        csupply: json["csupply"],
        tsupply: json["tsupply"],
        msupply: json["msupply"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "symbol": symbol,
        "name": name,
        "nameid": nameid,
        "rank": rank,
        "price_usd": priceUsd,
        "percent_change_24h": percentChange24H,
        "percent_change_1h": percentChange1H,
        "percent_change_7d": percentChange7D,
        "price_btc": priceBtc,
        "market_cap_usd": marketCapUsd,
        "volume24": volume24,
        "volume24a": volume24A,
        "csupply": csupply,
        "tsupply": tsupply,
        "msupply": msupply,
      };
}
