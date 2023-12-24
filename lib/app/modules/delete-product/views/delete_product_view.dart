import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yash_shop/app/data/utils/app_color.dart';
import 'package:yash_shop/app/data/utils/app_string.dart';
import 'package:yash_shop/app/data/utils/gap.dart';
import 'package:yash_shop/app/data/utils/label.dart';

import '../controllers/delete_product_controller.dart';

class DeleteProductView extends GetView<DeleteProductController> {
  const DeleteProductView({Key? key}) : super(key: key);

  Widget _ui() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      children: [
        Label(
          text: App_string.productID,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.productIDController,
          cursorColor: AppColor.color262c44,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color262c44,
              ),
            ),
            hintText: App_string.enter,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: const BorderSide(
                color: AppColor.color262c44,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ),
        VerticalGap(
          gap: 40,
        ),
        // CustomElevatedButton(
        //   // onTab: () => controller.onSubmit(),
        //   text: App_string.submit,
        //   textColor: AppColor.colorWhite,
        // ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeleteProductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeleteProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
