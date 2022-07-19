import 'package:intl/intl.dart';

abstract class UtilsServices {
  // R$ valor
  static String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return numberFormat.format(price);
  }
}
