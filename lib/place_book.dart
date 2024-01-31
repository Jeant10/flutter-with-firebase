// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';

import 'place.dart';
import 'src/widgets.dart';

class PlaceBook extends StatefulWidget {
  const PlaceBook({
    super.key,
    required this.places,
  });

  final List<Place> places;

  @override
  State<PlaceBook> createState() => _PlaceBookState();
}

class _PlaceBookState extends State<PlaceBook> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        for (var message in widget.places)
            Column(
              children: [
                Image.asset(message.urlimage),
                SizedBox(height: 8),
                IconAndDetail(Icons.location_city, message.nombre),
                IconAndDetail(Icons.add_location_sharp, message.location),


              ],
            ),
           SizedBox(height: 8),
      ],
      
    );
    
  }
}
