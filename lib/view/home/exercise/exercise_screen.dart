import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';
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
            SizedBox(
              height: 83,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 230,
                        height: 83,
                        decoration: BoxDecoration(
                          color: conBgClr,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                   width: 100,
                                    height: 65,
                                  decoration:  BoxDecoration(
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Image.asset(
                                    'assets/Rectangle 64.png',
                                    fit: BoxFit.cover,            
                                    ),
                                ),
                              const Padding(
                                padding:  EdgeInsets.all(8.0),
                                child:  Column(
                                  children: [
                                    Text('Shoulder Girdle')
                                  ],
                                ),
                              )  
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
