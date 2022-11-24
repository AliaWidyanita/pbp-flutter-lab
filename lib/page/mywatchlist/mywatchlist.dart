import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/mywatchlist/mywatchlist_detail.dart';
import 'package:counter_7/page/mywatchlist/fetch_mywatchlist.dart';

class MyWatchListPage extends StatefulWidget{
  const MyWatchListPage({super.key});

  State<MyWatchListPage> createState() => _MyWatchListPage();
}

class _MyWatchListPage extends State<MyWatchListPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Watch List'),
      ),
      drawer: const ListDrawer(),
      body: FutureBuilder(
        future: fetchWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Data Kosong",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),

                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: snapshot.data![index].watched? Colors.green:Colors.red, width: 2,),
                    ),

                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 7),
                      child: ListTile(
                        title: Text(
                          "${snapshot.data![index].title}",
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                        ),

                        trailing: Checkbox(
                          value: snapshot.data![index].watched,
                          onChanged: (bool? newValue) {
                            setState(() {
                              snapshot.data![index].watched = !snapshot.data![index].watched;
                            });
                          }
                        ),

                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              MyWatchListDetail(
                                watchList: snapshot.data![index],
                              )
                            ),
                          );
                        }
                      ),
                    ),
                  )
                ),
              );
            }
          }
        }
      )
    );
  }
}