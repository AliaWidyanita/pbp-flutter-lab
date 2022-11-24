import 'package:flutter/material.dart';
import 'package:counter_7/model/models.dart';
import 'package:counter_7/page/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Budget',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BudgetListPage(title: 'Data Budget'),
    );
  }
}

class BudgetListPage extends StatefulWidget {
  const BudgetListPage({super.key, required this.title});
  final String title;
  @override
  State<BudgetListPage> createState() => _BudgetListPageState();
}

class _BudgetListPageState extends State<BudgetListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Menambahkan drawer menu
      drawer: const ListDrawer(),
      body: ListView.builder(
        itemCount: budgetData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      "${budgetData[index].judul} (${budgetData[index].tanggal})",
                      style: const TextStyle(fontSize: 16,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${budgetData[index].nominal}",
                          style: const TextStyle(fontSize: 12,),
                        ),
                        Text(budgetData[index].tipe,
                          style: const TextStyle(fontSize: 12,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}