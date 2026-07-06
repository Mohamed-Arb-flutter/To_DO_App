import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo/Features/auth/data/presentaion/Cubit/Home/home_cubit.dart';
import 'package:todo/Features/auth/data/presentaion/Cubit/Home/home_state.dart';
import 'package:todo/Features/auth/viwes/Widghts/custom_card.dart';

class list_viwe_blder extends StatelessWidget {
  const list_viwe_blder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeError) {
          return Center(child: Text(state.error));
        } else if (state is HomeSuccess) {
          if (state.tasks.isEmpty) {
            return const Center(child: Text("No Tasks Found"));
          }

          return ListView.builder(
            itemCount: state.tasks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: CustomCard(task: state.tasks[index]),
              );
            },
          );
        }

        return const SizedBox();
      },
    );
  }
}
