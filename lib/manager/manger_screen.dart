import 'package:flutter/material.dart';


class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List day = ['Day', 'Week', 'month', 'year'];
  // ignore: non_constant_identifier_names
  int index_color = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Statistics',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        ... List.generate(
                        4,
                        (index) {
                          return GestureDetector(
                            onTap: () {

                              setState(() {
                              index_color = index;

                              });
                            },

                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index_color == index?
                               const Color.fromARGB(255, 144, 29, 29)
                              : Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                            day[index],
                            style: TextStyle(
                            color: index_color == index?
                               Colors.white
                              : Colors.black,
                            fontSize: 16,
                           fontWeight: FontWeight.w500,
                            ),
                           ),

                          ),
                          );
                        },
                      ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          ),
                        child: const Row(
                          children: [
                            Text(
                              'Expense',
                               style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold )
                                ),
                                Icon(
                                  Icons.arrow_downward_sharp,
                                  color: Colors.grey,
                                  ),
                          ],
                        ),
                      )
                    ],
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
