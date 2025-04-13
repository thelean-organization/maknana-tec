import 'package:flutter/material.dart';

import '../../../common/widgets/button/elevated_list_button.dart';
import '../../../common/widgets/row/invoice_row.dart';
import '../../../utlis/constants/colors.dart';
import '../../../utlis/constants/text.dart';

class InvoiceDetill extends StatelessWidget {
  const InvoiceDetill({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          InvoiceRow(
            icon: Icons.access_time,
            title: AppText.invoiceSettingDate,
            supTitle: AppText.invoiceSettingDateDay,
            child: SizedBox(
              height: 0,
              width: 0,
            ),
          ),
          InvoiceRow(
            icon: Icons.person_outlined,
            title: AppText.invoiceSettingClient,
            supTitle: AppText.invoiceSettingClientName,
            child: SizedBox(
              height: 0,
              width: 0,
            ),
          ),
          InvoiceRow(
            icon: Icons.location_on_outlined,
            title: AppText.invoiceSettingLocation,
            supTitle: AppText.invoiceSettingLocationFactory,
            child: SizedBox(
              height: 0,
              width: 0,
            ),
          ),
          InvoiceRow(
            icon: Icons.description_outlined,
            title: AppText.invoiceSettingContras,
            child: ElevatedButtonList(
              isIcon: true,
              onPressed: () {},
              width: 110,
              height: 35,
              spacing: 5,
              title: AppText.invoiceSettingContrasDownland,
              icon: Icons.file_download_outlined,
              color: AppColors.textPrimary,
            ),
          ),
          InvoiceRow(
            icon: Icons.payments_outlined,
            title: AppText.invoiceSettingAllPrice,
            supTitle: AppText.invoiceSettingPrice,
            color: AppColors.primary,
            child: SizedBox(
              height: 0,
              width: 0,
            ),
          ),
        ],
      ),
    );
  }
}
