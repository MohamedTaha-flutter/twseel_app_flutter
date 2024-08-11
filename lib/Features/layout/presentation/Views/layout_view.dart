import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twseel_app/Features/layout/presentation/Cubit/cubit.dart';
import 'package:twseel_app/Features/layout/presentation/Cubit/state.dart';

import '../../../../core/style/app_color.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, LayoutState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = LayoutCubit.get(context) ;
        return Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      offset: const Offset(0, 1),
                      color: Colors.black.withOpacity(0.25))
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Directionality(
                textDirection: TextDirection.ltr,
                child: BottomNavigationBar(
                  selectedItemColor: MyColors.orange,
                  elevation: 5,
                  unselectedItemColor: Colors.black,
                  backgroundColor: Colors.white,
                  items :cubit.items ,
                   currentIndex: cubit.currentIndex,
                  onTap: (value)
                  {
                    cubit.changeViewsOfLayout(value);
                  },
                ),
              ),
            ),
          ),
          body:cubit.views[cubit.currentIndex] ,
        );
      },
    );
  }
}
