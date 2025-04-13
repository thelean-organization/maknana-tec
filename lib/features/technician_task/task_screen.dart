import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maknana/features/technician_task/widget/header_task.dart';
import 'package:maknana/features/technician_task/widget/task_list.dart';

import '../../common/widgets/images/image_container.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 30.w),
          child: Column(
            spacing: 20.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ImageContainer(), HeaderTask(), TaskList()],
          ),
        ),
      ),
    );
  }
}
