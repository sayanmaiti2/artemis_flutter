import 'package:flutter/material.dart';
import 'package:artemis_flutter/widgets/family_tile.dart';
import 'package:artemis_flutter/models/member.dart';

class FamilyList extends StatefulWidget {
  final List<Member> familyMembers;

  FamilyList(this.familyMembers);

  @override
  _FamilyListState createState() => _FamilyListState();
}

class _FamilyListState extends State<FamilyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return FamilyTile(
          name: widget.familyMembers[index].name,
        );
      },
      itemCount: widget.familyMembers.length,
    );
  }
}
