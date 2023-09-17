import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/pages/data_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // inisial class counter
  Counter mycounter = Counter();
  Counter mycounter2 = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bloc Provider'), actions: []),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // button minus
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () {
                    mycounter.decrement();
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    // color: Colors.blue,
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // widget data counter
              DataWidget(mycounter: mycounter),
              // 1button plus
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () {
                    mycounter.increment();
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: 100,
                    width: 70,
                    // color: Colors.blue,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
