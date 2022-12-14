import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/budget/tambah_budget.dart';
import 'package:counter_7/page/budget/data_budget.dart';
import 'package:counter_7/page/mywatchlist/mywatchlist.dart';

class ListDrawer extends StatelessWidget{
    const ListDrawer({super.key});

    @override
    Widget build(BuildContext context){
      return Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: "counter_7"))
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => const AddBudgetPage(title: "Tambah Budget"))
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(builder: (context) => const BudgetListPage(title: "Data Budget"))
                );
              },
            ),
            ListTile(
              title: const Text('Watchlist'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWatchListPage()),
                );
              },
            ),
          ],
        ),
      );
    }
}