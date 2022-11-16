import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/models.dart';
import 'package:counter_7/tambah_budget.dart';

void main() {
  runApp(const MyApp());
}
class BudgetWidget extends StatelessWidget {
  const BudgetWidget(
      {super.key,
        required this.title,
        required this.amount,
        required this.type});
  final String title;
  final int amount;
  final String type;

  @override
  Widget build(BuildContext context) {
    return (Container(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Card(
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(type), Text(amount.toString())],
          ),
          leading: Icon(
            type == "Pemasukan" ? Icons.account_balance_wallet_outlined : Icons.account_balance_wallet_outlined,
            color: type == "Pemasukan" ? Colors.green : Colors.red,
          ),
        ),
      ),
    ));
  }
}
class MyData extends StatelessWidget {
  const MyData({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Budget',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyData(),
    );
  }
}
class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key, required this.title});
  final String title;
  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Menambahkan drawer menu
      drawer: Drawer(
        child: Column(
          children: [
            // Menambahkan clickable menu
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                // Route menu ke halaman utama
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                // Route menu ke halaman tampilan data
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: BudgetList.data
              .map<BudgetWidget>((Budget item) => BudgetWidget(
                title: item.title, amount: item.amount, type: item.type))
              .toList(),
        ),
      ),
    );
  }
}