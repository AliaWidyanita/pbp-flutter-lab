import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/tambah_budget.dart';
import 'package:counter_7/data_budget.dart';

class BudgetList {
  static List<Budget> data = [];
}


class Budget{
  Budget({required this.title, required this.amount, required this.type});
  String title = '';
  int amount = 0;
  String type = 'Expense';
}