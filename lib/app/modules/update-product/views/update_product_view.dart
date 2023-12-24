import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yash_shop/app/data/utils/app_color.dart';
import 'package:yash_shop/app/data/utils/app_string.dart';
import 'package:yash_shop/app/data/utils/gap.dart';
import 'package:yash_shop/app/data/utils/label.dart';

import '../controllers/update_product_controller.dart';

class UpdateProductView extends GetView<UpdateProductController> {
  const UpdateProductView({Key? key}) : super(key: key);

  Widget _ui() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      children: [
        Label(
          text: App_string.productName,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.pNameController,
          cursorColor: AppColor.color262c44,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
                RegExp(r'[a-z A-Z0-9!@#\$%^&*(),.?":{}|<>]')),
          ],
          keyboardType: TextInputType.text,
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
          gap: 20,
        ),
        Label(
          text: App_string.description,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.descriptionController,
          cursorColor: AppColor.color262c44,
          keyboardType: TextInputType.text,
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
          gap: 20,
        ),
        Label(
          text: App_string.price,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.priceController,
          cursorColor: AppColor.color262c44,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
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
          gap: 20,
        ),
        Label(
          text: App_string.percentageDiscount,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.discountController,
          cursorColor: AppColor.color262c44,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
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
          gap: 20,
        ),
        Label(
          text: App_string.brand,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.brandController,
          cursorColor: AppColor.color262c44,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-z A-Z]')),
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
          gap: 20,
        ),
        Label(
          text: App_string.category,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.categoryController,
          cursorColor: AppColor.color262c44,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[a-z A-Z]')),
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
          gap: 20,
        ),
        Label(
          text: App_string.ratings,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.ratingController,
          cursorColor: AppColor.color262c44,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
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
          gap: 20,
        ),
        Label(
          text: App_string.stock,
          isMandatory: true,
        ),
        TextField(
          style: GoogleFonts.lato(
            color: AppColor.colorText,
          ),
          controller: controller.stockController,
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
        ElevatedButton(
          onPressed: () => controller.onSubmit(),
          child: Text(""),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UpdateProductView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UpdateProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
