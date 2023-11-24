import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/exercise/elbow_ex/elbow_ex.dart';
import 'package:physio_doc/view/home/exercise/joint_ex/s_joint_ex.dart';
import 'package:physio_doc/view/home/exercise/meta_joint_exc/meta_joint.dart';
import 'package:physio_doc/view/home/exercise/shoulder_exc.dart/Shoulder_G_exc.dart';
import 'package:physio_doc/view/home/exercise/widgets/custom_subExc.dart';
import 'package:physio_doc/view/home/exercise/widgets/recent_activity.dart';
import 'package:physio_doc/view/home/exercise/wrist_ex/wrist_j_ex.dart';
import 'package:physio_doc/widgets/custom_searchBar.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonClr,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, size: 32, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            const CustomSearchTextField(
              hintTitle: 'find exercise...',
            ),
             SizedBox(height: 15.h),
            const Text(
              'Recent Activities',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10.h),
            const RecentActitvities(),
             SizedBox(height: 10.h),
            const Center(
              child: Text(
                'Exercises',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: txtColor,
                ),
                ),
            ),
            SizedBox(height: 10.h),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CustomSubExc(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ShoulderGridleExc() ));
                } , 
                title: 'Shoulder Girdle Exercises'
                ),
                SizedBox(height: 5.h),
                CustomSubExc(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const ShoulderJointExc() ));
                } , 
                title: 'Shoulder Joint Exercises'
                ),
                SizedBox(height: 5.h),
                CustomSubExc(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const ElbowJointExc() ));
                } , 
                title: 'Elbow Joint Exercises'
                ),
                 SizedBox(height: 5.h),
                CustomSubExc(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const WristJointExc()));
                } , 
                title: 'Wrist Joint Exercises'
                ),
               SizedBox(height: 5.h),
                CustomSubExc(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MetaJointExc()));
                } , 
                title: 'Metacarpophalangeal Joint Ex.'
                ),
                 SizedBox(height: 5.h),
                CustomSubExc(
                onTap: () {} , 
                title: 'Proximal Interphalangeal Joint Ex.'
                ),
                CustomSubExc(
                onTap:() {} , 
                title: 'Distal Interphalangeal Joint Ex.',
                ) 
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

