import 'package:flutter/material.dart';
import '../data/model/exchange_rate.dart';
import '../data/repository/exchange_rate_repository.dart';

class ExchangeRateViewModel extends ChangeNotifier {
  final _repository = ExchangeRateRepository();

  List<ExchangeRate> _exchangeRates = [];

  List<ExchangeRate> get exchangeRates => List.unmodifiable(_exchangeRates);

  void onSearch(String query) async {
    _exchangeRates = await _repository.getExchangeRateList(query);
    notifyListeners();
  }
}