import 'package:flutter/material.dart';

import 'package:appcrypto/pages/main_page.dart';
import 'package:appcrypto/pages/coin_details_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'mainpage': (_) => const MainPage(),
  'coinpage': (_) => const DetailsCoinPage(),
};
