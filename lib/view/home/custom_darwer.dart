import 'package:flutter/material.dart';
import 'package:physio_doc/theme/style.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 70,
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15)
          ),
          color: buttonClr
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
                onPressed: () {},
                child: const Text('Item 1'),
              ),
            
            TextButton(
                onPressed: () {},
                child: const Text('Item 2'),
              ),
            
             TextButton(
                onPressed: () {},
                child: const Text('Item 3'),
              ),
            
            TextButton(
                onPressed: () {},
                child: const Text('Item 4'),
              ),
            
             TextButton(
                onPressed: () {},
                child: const Text('Item 5'),
              ),
            
             TextButton(
                onPressed: () {},
                child: const Text('Item 6'),
              ),
          ],
        ),
      ),
    );
  }
}
