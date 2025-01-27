import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SubscriptionController extends GetxController {
  var selectedPlan = 0.obs;
  var selectedPaymentMethod = 0.obs;
  final accountNameController = TextEditingController();
  final cardNumberController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void onClose() {
    accountNameController.dispose();
    cardNumberController.dispose();
    super.onClose();
  }
}
