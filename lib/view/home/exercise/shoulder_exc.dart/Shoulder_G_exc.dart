import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/exercise/shoulder_exc.dart/widgets/s_grid_exc.dart';
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
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            const CustomSearchTextField(
              hintTitle: 'find exercise...',
            ),
            SizedBox(height: 20.h),
            const CustomSubExTitle(
              title: 'Shoulder Girdle Exercises',
            ),
             SizedBox(height: 10.h),
             SizedBox(
                height: 550.h,
                child:const SingleChildScrollView(
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
