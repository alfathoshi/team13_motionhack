import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/community_controller.dart';

class CommunityView extends GetView<CommunityController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CommunityView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CommunityView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
