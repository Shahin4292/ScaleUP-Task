// import 'package:alora_suite/util/dimensions.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../util/styles.dart';
//
// class RememberMeCheckbox extends StatelessWidget {
//   final VoidCallback onTap;
//   final Color color;
//   final Widget child;
//   final String title;
//
//   const RememberMeCheckbox({
//     super.key,
//     required this.onTap,
//     required this.color,
//     required this.child,
//     required this.title,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         spacing: 8,
//         children: [
//           Container(
//             width: 20,
//             height: 20,
//             decoration: BoxDecoration(
//               color: color,
//               border: Border.all(color: Colors.black),
//               borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
//             ),
//             child: child,
//           ),
//           Text(title, style: robotoRegular.copyWith(color: Theme.of(context).primaryColor,)),
//         ],
//       ),
//     );
//   }
// }




// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Obx(
//       () => RememberMeCheckbox(
//         onTap: authController.toggleCheckbox,
//         color:
//             authController.isChecked.value
//                 ? Colors.blue
//                 : Colors.transparent,
//         title: "remember_me".tr,
//         child:
//             authController.isChecked.value
//                 ? Icon(
//                   Icons.check,
//                   size: 16,
//                   color: Colors.white,
//                 )
//                 : Container(),
//       ),
//     ),
//     Text(
//       "forgot_password".tr,
//       style: robotoRegular.copyWith(
//         fontSize: Dimensions.fontSizeDefault,
//         color: Colors.blue))
//   ]),

// final isChecked = false.obs;
// void toggleCheckbox() {
//   isChecked.value = !isChecked.value;
// }