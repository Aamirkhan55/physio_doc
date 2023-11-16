import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/exercise/elbow_ex/widgets/e_grid.dart';
import 'package:physio_doc/widgets/custom_searchBar.dart';
import 'package:physio_doc/widgets/custom_subEx_title.dart';

class ElbowJointExc extends StatelessWidget {
  const ElbowJointExc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonClr,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 32,
            color: Colors.white,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            CustomSearchTextField(
              hintTitle: 'find exercise...',
            ),
            SizedBox(height: 20),
            CustomSubExTitle(
              title: 'Elbow Joint Exercises',
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 550,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: CustomElbowExc(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
