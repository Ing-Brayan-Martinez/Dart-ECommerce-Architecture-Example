import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:prueba_flutter/invoice/model/invoice.dart';
import 'package:prueba_flutter/shared/provider/ApiProvider.dart';

class InvoiceRepository {

  Future<List<Invoice>> getInvoices() async {
    final Response res = await ApiProvider.getHttpManager()
        .get("/invoices");

    final List<Invoice> list = jsonDecode(res.data)
        .map((result) => new Invoice.fromJson(result))
        .toList();

    return list;
  }
}