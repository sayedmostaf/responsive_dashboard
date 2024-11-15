import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

import '../utils/size_config.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; // rebuild to ui
    return width >= SizeConfig.desktop && width < 1750
        ? const SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
