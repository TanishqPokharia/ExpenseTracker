import 'package:expence_tracker/models/expense.dart';
import 'package:expence_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // .builder method if listview makes it such that items area only created when they are going to become visible
    // itembuilder will be called itemCount number of times
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => ExpenseItem(expense: expenses[index]));
  }
}
