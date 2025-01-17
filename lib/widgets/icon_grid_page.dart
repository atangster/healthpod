/// Icon grid page
//
// Time-stamp: <Thursday 2024-12-19 13:39:36 +1100 Graham Williams>
//
/// Copyright (C) 2025, Software Innovation Institute, ANU
///
/// Licensed under the GNU General Public License, Version 3 (the "License");
///
/// License: https://www.gnu.org/licenses/gpl-3.0.en.html
//
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later
// version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
// details.
//
// You should have received a copy of the GNU General Public License along with
// this program.  If not, see <https://www.gnu.org/licenses/>.
///
/// Authors: Ashley Tang

library;

import 'package:flutter/material.dart';

import 'package:healthpod/dialogs/show_comming_soon.dart';

class IconGridPage extends StatelessWidget {
  final List<IconData> icons = [
    Icons.home,
    Icons.star,
    Icons.settings,
    Icons.phone,
    Icons.email,
    Icons.camera_alt,
    Icons.map,
    Icons.music_note,
    Icons.shopping_cart,
    Icons.work,
    Icons.wifi,
    Icons.alarm,
  ];

  IconGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What would you like to do today ...'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          spacing: 10.0, // Space between icons horizontally
          runSpacing: 10.0, // Space between icons vertically
          children: icons.map((icon) {
            return GestureDetector(
              onTap: () => showComingSoon(context),
              child: Container(
                width: 80.0, // Fixed width for each icon container
                height: 80.0, // Fixed height for each icon container
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 50.0,
                ),
              ),
            );
          }).toList(),
        ),
        // child: GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 5,
        //     crossAxisSpacing: 10.0,
        //     mainAxisSpacing: 10.0,
        //   ),
        //   itemCount: icons.length,
        //   itemBuilder: (context, index) {
        //     return GestureDetector(
        //       onTap: () => showComingSoonDialog(context),
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Colors.blue,
        //           borderRadius: BorderRadius.circular(10.0),
        //         ),
        //         child: Icon(
        //           icons[index],
        //           color: Colors.white,
        //           size: 50.0,
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
