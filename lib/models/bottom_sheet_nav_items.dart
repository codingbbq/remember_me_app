import 'package:flutter/material.dart';

class BottomSheetNavItems {
  final IconData icon;
  final String title;
  
  BottomSheetNavItems({
    this.icon,
    this.title
  });
}

final BottomSheetNavItems home = BottomSheetNavItems(
  icon: Icons.home,
  title: "Home"
);

final BottomSheetNavItems website = BottomSheetNavItems(
  icon: Icons.web,
  title: "Website"
);

final BottomSheetNavItems sendemail = BottomSheetNavItems(
  icon: Icons.email,
  title: "Email"
);

final BottomSheetNavItems settings = BottomSheetNavItems(
  icon: Icons.settings,
  title: "Settings"
);

final List<BottomSheetNavItems> bottomNavItems = [
  home,
  website,
  sendemail,
  settings
];