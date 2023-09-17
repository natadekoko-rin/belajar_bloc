import 'package:belajar_bloc/bloc/counter.dart';
import 'package:belajar_bloc/pages/center_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataWidget extends StatelessWidget {
  DataWidget({
    super.key,
    // required this.mycounter, //lemparan dari luar
  });

  //data yg diambil dari constructor (data lemparan) data ini sama dengan data yg diinisialisasi di home.dart
  // final Counter mycounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 200,
      color: Colors.red,
      // child: CenterWidget(mycounter: mycounter),
      child: CenterWidget(),
    );
  }
}
