import 'package:expence_tracker/widgets/new_expense.dart';
import 'package:expence_tracker/widgets/expenses_list.dart';
import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure)
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        context: context,
        builder: (ctx) =>
            const NewExpense()); //we need context of modal bottom sheet not the expenses class so to prevent clash we name our context as ctx
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expense Tracker"),
      ),
      body: Column(children: [
        const Text('The chart'),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: _openAddExpenseOverlay,
                child: const Icon(Icons.add),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
