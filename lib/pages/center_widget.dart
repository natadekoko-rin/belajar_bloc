import 'package:belajar_bloc/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
    // required this.mycounter,
  });

  // masih data class counter yg sama (via constructor)
  // final Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: BlocBuilder(
      // bloc: mycounter,
      bloc: BlocProvider.of<Counter>(context), //cuma ambil classnya
      builder: (context, state) {
        return Text(
          "$state",
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        );
      },
    ));
  }
}
