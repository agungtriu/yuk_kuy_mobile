import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/header_global.dart';

class VerificationSuccessView extends GetView {
  const VerificationSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: Get.width - 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeaderGlobal(
                    title: "Verification Success",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    "assets/images/img_success.png",
                    height: 160,
                    width: 184,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Transaction Number : 123",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(69, 131, 236, 1),
                    )),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Product Name :", "FASXXX"),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Date Tour :", "29 Feb 22, 09.00 WIB"),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Order By :", "HAXXXX"),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Amount Ticket :", "5"),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Date Order :", "29 Feb 22, 09.00 WIB"),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Amount Price :", "IDR. 12.000.000"),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Vendor :", "INDO"),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Gathering Point :",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(69, 131, 236, 1),
                    )),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Steet Sudirman, Xxxxxxxxxxxx, XXXXXXXXXx,",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ItemData("Tour Guide :", "HAXXXX"),
                  const SizedBox(
                    height: 7,
                  ),
                  ItemData("Phone :", "8787932XXX")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row ItemData(String tag, String content) {
    return Row(
      children: [
        Text(
          tag,
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(143, 149, 158, 1),
          )),
        ),
        const Spacer(),
        Text(
          content,
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          )),
        ),
      ],
    );
  }
}
