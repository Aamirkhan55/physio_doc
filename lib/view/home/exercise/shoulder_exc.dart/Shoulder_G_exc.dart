import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/exercise/shoulder_exc.dart/widgets/Grid_exc.dart';
import 'package:physio_doc/widgets/custom_searchBar.dart';
import 'package:physio_doc/widgets/custom_subEx_title.dart';

class ShoulderGridleExc extends StatelessWidget {
  const ShoulderGridleExc({super.key});

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
              title: 'Shoulder Girdle Exercises',
            ),
            SizedBox(height: 10),
            SizedBox(
                height: 550,
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical, 
                    child: CustomGridExc(),
                    ),
                    ),
          ],
        ),
      ),
    );
  }
}
