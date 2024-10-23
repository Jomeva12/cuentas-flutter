import 'package:flutter/material.dart';

import '../model/transaction_model.dart';

class TransactionProvider extends ChangeNotifier {
  // Lista de transacciones
  List<TransaccionModel> _transactions = [];

  // Getter para obtener la lista de transacciones
  List<TransaccionModel> get transactions => _transactions;

  // Método para agregar una nueva transacción
  void addTransaction(double monto, TransactionType type, String description) {
    final newTransaction = TransaccionModel(monto, type, description);
    _transactions.add(newTransaction);
    // Notifica a los listeners que hubo un cambio
    notifyListeners();
  }

  // Método para obtener el balance total
  double get totalBalance {
    double balance = 0;
    for (var transaction in _transactions) {
      if (transaction.type == TransactionType.entrada) {
        balance += transaction.monto;
      } else if (transaction.type == TransactionType.salida) {
        balance -= transaction.monto;
      }
    }
    return balance;
  }
}
