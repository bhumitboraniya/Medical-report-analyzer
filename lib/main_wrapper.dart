import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madical_report_analyzer/bottom_nav_cubit.dart';
import 'package:madical_report_analyzer/chat.dart';
import 'package:madical_report_analyzer/main.dart';
import 'package:madical_report_analyzer/upload.dart';

class MainWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state,
            children: [
              MyApp(),
              chat(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state,
            onTap: (index) => context.read<BottomNavCubit>().setTab(index),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
            ],
          ),
        );
      },
    );
  }
}
