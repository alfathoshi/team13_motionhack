import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/consultation_controller.dart';

class ConsultationView extends GetView<ConsultationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConsultationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ConsultationView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
