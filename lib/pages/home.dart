import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Counter mycounter = Counter(init: 99);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Block Builder'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder(
                initialData: mycounter.init,
                stream: mycounter.stream,
                builder: (context, snapshot) {
                  return Text(
                    "${snapshot.data}",
                    style: const TextStyle(fontSize: 50),
                  );
                }),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {
                      mycounter.decrement();
                    },
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () {
                      mycounter.increment();
                    },
                    icon: const Icon(Icons.add))
              ],
            )
          ],
        ));
  }
}
