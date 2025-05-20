import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/components/Tasks_Item.dart';
import '../../shared/cubit/Status.dart';
import '../../shared/cubit/cubit.dart';

class NewTasks extends StatelessWidget {
  const NewTasks({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<AppCubit,AppStates>(builder: (context, state) {
      var tasks = AppCubit.get(context).newTasks;

      return TaskItem(
        tasks: tasks,
      );



    });
  }
}
