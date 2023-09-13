import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//udah ini aja
class HomePage extends StatelessWidget {
  Counter mycounter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Block Builder'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // StreamBuilder(
            //     initialData: mycounter.init,
            //     stream: mycounter.stream,
            //     builder: (context, snapshot) {
            //       return Text(
            //         "${snapshot.data}",
            //         style: const TextStyle(fontSize: 50),
            //       );
            //     }),

            // tipe counter dan tipe statenya
            BlocBuilder<Counter, int>(
              bloc: mycounter,
              // akan build widget baru jika trus
              buildWhen: (prev, curent) {
                // print(prev);
                // print(curent);
                // return false;
                if (curent % 2 == 0) {
                  return true;
                } else {
                  return false;
                }
              },
              builder: (context, state) {
                return Text(
                  "$state",
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
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
