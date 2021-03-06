import 'package:dart_flutter_example/controllers/observer/observer.dart';
import 'package:dart_flutter_example/controllers/observer/observer_action.dart';
import 'package:dart_flutter_example/controllers/observer/observer_event.dart';
import 'package:dart_flutter_example/controllers/observer/observer_singlenton.dart';
import 'package:flutter/material.dart';

import '../reload_strategy.dart';

class ReloadCustomerFromDataStrategy extends ReloadStrategy {
  Observer _observer;
  BuildContext _context;

  ReloadCustomerFromDataStrategy(BuildContext context) {
    _context = context;
    _observer = SinglentonObserver.get();
  }

  @override
  void reload() {
    _observer
        .notify(new ObserverAction(ObserverEvent.EVENT_LOAD_LIST_CUSTOMER, 0));

    Navigator.of(_context).pop();

    print("He pasado por data strategy");
  }
}
