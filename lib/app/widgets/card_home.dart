import 'package:final_project_2023/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardHome extends StatelessWidget {
  const CardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Card(
          elevation: 4,
          child: SizedBox(
            height: 160,
            width: 1250,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Selamat Datang,',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromARGB(255, 117, 110, 110),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: ElevatedButton(
                              onPressed: () {
                                HomeController().laporan();
                              },
                              child: const Text('LAPORKAN'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red)),
                        )
                      ],
                    ),
                    const Text(
                      'Ayo Laporkan Sampahmu!',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Chip(
                        label: Text(
                          DateFormat.MMM().format(DateTime.now()),
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.red),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
