import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scale_up_task/res/colors/app_colors.dart';
import 'package:scale_up_task/res/components/text.dart';
import 'package:scale_up_task/view/subscription_screen/widget/account_name.dart';
import 'package:scale_up_task/view/subscription_screen/widget/cancel_button.dart';
import 'package:scale_up_task/view/subscription_screen/widget/card_details.dart';
import 'package:scale_up_task/view/subscription_screen/widget/payment_method.dart';
import 'package:scale_up_task/view/subscription_screen/widget/plan_option.dart';
import 'package:scale_up_task/view/subscription_screen/widget/subscription_button.dart';

import '../../viewModel/subscription_controller/subscription_controller.dart';

class SubscriptionScreen extends StatelessWidget {
  final SubscriptionController controller = Get.put(SubscriptionController());

  SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor, // Dark background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BoldText(
                    text: "Set up Your Payment &\nBuy Subscription",
                    size: 30,
                    color: Colors.white),
                SizedBox(
                  height: 20,
                ),
                ModifiedText(
                    text: "Starter Plan",
                    color: Colors.white,
                    size: 16,
                    fontWeight: FontWeight.normal),
                SizedBox(
                  height: 10,
                ),
                Obx(() => Column(
                      spacing: 20,
                      children: [
                        PlanOptionWidget(
                          title: "Pay Monthly",
                          subtitle: "\$2.0/ Month/ Member",
                          index: 0,
                          isSelected: controller.selectedPlan.value == 0,
                          onTap: () => controller.selectedPlan.value = 0,
                        ),
                        PlanOptionWidget(
                          title: "Pay Monthly",
                          subtitle: "\$2.0/ Month/ Member",
                          index: 1,
                          isSelected: controller.selectedPlan.value == 1,
                          onTap: () => controller.selectedPlan.value = 1,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                ModifiedText(
                  text: "Billed To",
                  color: Colors.white,
                  size: 16,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(
                  height: 10,
                ),
                AccountName(
                  subscriptionController: controller,
                ),
                SizedBox(
                  height: 20,
                ),
                ModifiedText(
                  text: "Payment Details",
                  color: Colors.white,
                  size: 16,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(
                  height: 10,
                ),
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PaymentMethodWidget(
                          title: "Pay by Card",
                          icon: Icons.credit_card,
                          isSelected: controller.selectedPaymentMethod.value == 0,
                          onTap: () => controller.selectedPaymentMethod.value = 0,
                        ),
                        PaymentMethodWidget(
                          title: "Bank Transfer",
                          icon: Icons.account_balance,
                          isSelected: controller.selectedPaymentMethod.value == 1,
                          onTap: () => controller.selectedPaymentMethod.value = 1,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                CardDetails(
                  subscriptionController: controller,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CancelButton(),
                    SubscribeButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
