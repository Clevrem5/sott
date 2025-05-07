import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_repository/core/utils/icons.dart';
import 'package:hive_repository/core/utils/images.dart';
import 'package:hive_repository/features/sotthome/manager/home_bloc.dart';
import 'package:hive_repository/features/sotthome/manager/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return switch (state.status) {
            HomeStatus.error => Text("Xato, ma'lumot kelmadi"),
            HomeStatus.loading => Center(
                child: CircularProgressIndicator(),
              ),
            HomeStatus.idle => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      floating: true,
                      snap: true,
                      pinned: false,
                      expandedHeight: 150.h,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Image.asset(AppImages.backround),
                      ),
                      leading: SvgPicture.asset(AppIcons.logo),
                    ),
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => Column(
                            children: [Image.network(state.home[index].image)],
                          ),
                        ),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 215.h,
                          childAspectRatio: 170.w / 215.h,
                          crossAxisSpacing: 12.w,
                          mainAxisSpacing: 24.h,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          };
        },
      ),
    );
  }
}
