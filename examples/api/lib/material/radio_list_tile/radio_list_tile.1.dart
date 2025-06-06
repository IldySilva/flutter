// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// Flutter code sample for [RadioListTile].

void main() => runApp(const RadioListTileApp());

class RadioListTileApp extends StatelessWidget {
  const RadioListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: RadioListTileExample());
  }
}

enum Groceries { pickles, tomato, lettuce }

class RadioListTileExample extends StatefulWidget {
  const RadioListTileExample({super.key});

  @override
  State<RadioListTileExample> createState() => _RadioListTileExampleState();
}

class _RadioListTileExampleState extends State<RadioListTileExample> {
  Groceries? _groceryItem = Groceries.pickles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RadioListTile Sample')),
      body: RadioGroup<Groceries>(
        groupValue: _groceryItem,
        onChanged: (Groceries? value) {
          setState(() {
            _groceryItem = value;
          });
        },
        child: const Column(
          children: <Widget>[
            RadioListTile<Groceries>(
              value: Groceries.pickles,
              title: Text('Pickles'),
              subtitle: Text('Supporting text'),
            ),
            RadioListTile<Groceries>(
              value: Groceries.tomato,
              title: Text('Tomato'),
              subtitle: Text(
                'Longer supporting text to demonstrate how the text wraps and the radio is centered vertically with the text.',
              ),
            ),
            RadioListTile<Groceries>(
              value: Groceries.lettuce,
              title: Text('Lettuce'),
              subtitle: Text(
                "Longer supporting text to demonstrate how the text wraps and how setting 'RadioListTile.isThreeLine = true' aligns the radio to the top vertically with the text.",
              ),
              isThreeLine: true,
            ),
          ],
        ),
      ),
    );
  }
}
