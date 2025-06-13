import 'package:coffee_app/feature/pages/details/widgets/details_body.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: DetailsBody());
  }
}
