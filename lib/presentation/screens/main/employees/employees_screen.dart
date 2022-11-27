import 'package:flutter/material.dart';
import 'package:oggetto/presentation/resources/app_colors.dart';
import 'package:oggetto/presentation/widgets/appbars/custom_appbar.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Сотрудники', backgroundColor: AppColors.tertiary),

      ],
    );
  }
}
