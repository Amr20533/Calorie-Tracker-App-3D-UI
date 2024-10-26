import 'package:calorie_tracker_app/components/custom_calculation_box.dart';
import 'package:flutter/material.dart';

class DailyGoals extends StatelessWidget {
  const DailyGoals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text("Daily goals"),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Expanded(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text("87"),
                ),
              ),
              Transform.translate(
                  offset: const Offset(0, 20),
                  child: const Text("%"))
            ],
          ),
        ),
        const CustomCalculationBox(
          value: 1.840,
          title: "calories",
          icon: Icons.local_fire_department_outlined,
          iconColor: Colors.red,
        ),
        const SizedBox(height: 12),
        const CustomCalculationBox(
          value: 3.480,
          title: "steps",
          icon: Icons.do_not_step,
          iconColor: Colors.purple,
        ),
        const SizedBox(height: 12),
        const CustomCalculationBox(
          value: 6.5,
          title: "hours",
          icon: Icons.hourglass_bottom,
          iconColor: Colors.lightBlueAccent,
        ),
      ],
    );
  }
}
