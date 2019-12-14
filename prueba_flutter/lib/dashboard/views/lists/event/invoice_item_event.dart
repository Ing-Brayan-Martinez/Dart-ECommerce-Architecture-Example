

import 'package:prueba_flutter/invoice/model/invoice.dart';

class InvoiceItemEvent {

  static const String EVENT_SEE = "SEE";
  static const String EVENT_UPDATE = "UPDATE";
  static const String EVENT_DELETE = "DELETE";

  String type;
  Invoice invoice;

  InvoiceItemEvent(this.type, this.invoice);

}