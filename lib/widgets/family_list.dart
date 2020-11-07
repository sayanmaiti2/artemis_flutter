import 'package:flutter/material.dart';
import 'package:artemis_flutter/widgets/family_tile.dart';

class FamilyList extends StatelessWidget {
  const FamilyList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FamilyTile(),
        FamilyTile(),
      ],
    );
  }
}
