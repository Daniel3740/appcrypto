import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appcrypto/services/tickets_service.dart';

class DetailsCoinPage extends StatefulWidget {
  const DetailsCoinPage({Key? key}) : super(key: key);

  @override
  State<DetailsCoinPage> createState() => _DetailsCoinPageState();
}

class _DetailsCoinPageState extends State<DetailsCoinPage> {
  @override
  Widget build(BuildContext context) {
    final coin = Provider.of<TicketsService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${coin.ticketCoin?.name}'),
      ),
      body: ListView(children: [
        const Divider(),
        Container(
          decoration: BoxDecoration(color: Colors.indigo[50]),
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' ${coin.ticketCoin?.symbol}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                ' ${coin.ticketCoin?.name}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Cambio ultimos 7 dias',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.percentChange7D}%',
                style: TextStyle(
                    color: double.parse(coin.ticketCoin!.percentChange7D!) > 0
                        ? Colors.green
                        : Colors.red,
                    fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Cambio ultima hora',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.percentChange1H}%',
                style: TextStyle(
                    color: double.parse(coin.ticketCoin!.percentChange1H!) > 0
                        ? Colors.green
                        : Colors.red,
                    fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Precio actual',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.priceUsd} USD',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Posicion en el ranking',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                'Nº ${coin.ticketCoin?.rank}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'market_cap_usd',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.marketCapUsd}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'volume24',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.volume24}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'volume24_native',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.volume24A}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'csupply',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.csupply}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'price_btc',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.priceBtc}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'tsupply',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.tsupply}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
        const Divider(),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(color: Colors.indigo[50]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'msupply',
                style: TextStyle(color: Colors.indigo, fontSize: 20),
              ),
              Text(
                '${coin.ticketCoin?.msupply}',
                style: const TextStyle(color: Colors.indigo, fontSize: 20),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
