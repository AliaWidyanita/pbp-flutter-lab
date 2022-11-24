import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist_model.dart';
import 'package:counter_7/page/drawer.dart';

class MyWatchListDetail extends StatelessWidget{
  final WatchList watchList;
  const MyWatchListDetail({super.key, required this.watchList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: const ListDrawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(children: [
          Center(
            child: Text(
              watchList.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )
          ),
          const SizedBox(height: 10,),

          Column(
            children: [
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Text(
                    "Release Date: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    watchList.releaseDate,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),

              const SizedBox(height: 10,),

              Row(
                children: [
                  const Text(
                    "Rating: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "${watchList.rating.toString()} / 5",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),

              const SizedBox(height: 10,),

              Row(
                children: [
                  const Text(
                    "Status: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    watchList.watched? "watched":"haven't watch yet",
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),

              const SizedBox(height: 10,),

              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Review: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),

              Row(
                children: [
                  Flexible(
                    child: Text(
                      watchList.review,
                      style: const TextStyle(fontSize: 18),
                    )
                  )
                ],
              )
            ]
          ),

          const Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text(
                "Back",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      )
    );
  }
}