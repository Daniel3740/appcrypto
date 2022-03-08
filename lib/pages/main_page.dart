import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:appcrypto/services/tickets_service.dart';
import 'package:appcrypto/models/tickets_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _ticketsService = TicketsService();
  List<TicketsModel> _list = [];

  @override
  void initState() {
    super.initState();
    _loadTickets();
  }

  void _loadTickets() async {
    _list = await _ticketsService.getTickets();
    debugPrint('Inicio de la app');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tickets - ALL COIN'),
      ),
      body: _list.isEmpty
          ? const Center(
              child: Text(
                'Por favor espere...',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: _listViewAllCoin(),
                )
              ],
            ),
    );
  }

  ListView _listViewAllCoin() {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, i) => _listWidgets(_list[i]),
      separatorBuilder: (_, i) => const Divider(),
      itemCount: _list.length,
    );
  }

  _listWidgets(TicketsModel list) {
    final coinTicket = Provider.of<TicketsService>(context);

    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              '${list.name} - Precio ',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Flexible(
            child: Text(
              ' ${list.priceUsd} USD',
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
      leading: Text('${list.symbol}'),
      trailing: Column(
        children: [
          Text('24 horas \n ${list.percentChange24H}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: double.parse(list.percentChange24H!) > 0
                    ? Colors.green
                    : Colors.red,
              )),
          const Icon(Icons.arrow_forward, size: 20),
        ],
      ),
      onTap: () {
        coinTicket.ticketCoin = list;
        Navigator.pushNamed(context, 'coinpage');
      },
    );
  }
}
