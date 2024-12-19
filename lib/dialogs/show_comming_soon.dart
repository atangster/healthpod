/// Show a coming soon now notice.
//
// Time-stamp: <Thursday 2024-12-19 13:39:23 +1100 Graham Williams>
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
/// Authors: <AUTHORS>

library;

import 'package:flutter/material.dart';

void showComingSoon(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Coming Soon'),
      content: const Text('This feature is coming soon.'),
      actions: [
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}