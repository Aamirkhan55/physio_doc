import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
import 'package:physio_doc/view/home/exercise/joint_ex/s_joint_ex.dart';
import 'package:physio_doc/view/home/exercise/shoulder_exc.dart/Shoulder_G_exc.dart';
import 'package:physio_doc/view/home/exercise/widgets/custom_subExc.dart';
import 'package:physio_doc/view/home/exercise/widgets/recent_activity.dart';
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
            const SizedBox(height: 10),
            const CustomSearchTextField(
              hintTitle: 'find exercise...',
            ),
            const SizedBox(height: 15),
            const Text(
              'Recent Activities',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            const RecentActitvities(),
            const SizedBox(height: 20),
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
            const SizedBox(height: 10),
            SizedBox(
              height: 430,
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
                const SizedBox(height: 5),
                CustomSubExc(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => const ShoulderJointExc() ));
                } , 
                title: 'Shoulder Joint Exercises'
                ),
                const SizedBox(height: 5),
                CustomSubExc(
                onTap: () {} , 
                title: 'Elbow Joint Exercises'
                ),
                const SizedBox(height: 5),
                CustomSubExc(
                onTap: () {} , 
                title: 'Wrist Joint Exercises'
                ),
                const SizedBox(height: 5),
                CustomSubExc(
                onTap: () {} , 
                title: 'Metacarpophalangeal Joint Ex.'
                ),
                const SizedBox(height: 5),
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
            )
             
        
          ],
        ),
      ),
    );
  }
}

