import 'package:demo_app_lite/presentation/views/search_screen/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/remote_repository/now_playing_remote_repository.dart';
import '../../domain/usecases/now_playing_use_case.dart';
import '../views/home/cubit/now_playing_cubit/now_playing_cubit.dart';
import '../views/home/cubit/popular_cubit/popular_cubit.dart';
import '../views/home/cubit/top_rated_cubit/top_rated_cubit.dart';
import '../views/home/cubit/upcoming_cubit/upcoming_cubit.dart';
import '../views/home/home.dart';
import '../views/profile_screen/profile_screen.dart';
import '../views/search_screen/search_screen.dart';

class CustomBottomBar extends StatefulWidget {
  final String? name;
  final String? email;

  const CustomBottomBar({super.key, required this.name, required this.email});

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _currentIndex = 0;
  bool _isLoggedIn = true; // Assume a flag for logged-in state.

  late String name;
  late String email;

  @override
  void initState() {
    super.initState();
    // Initialize name and email after the widget is created
    name = widget.name ?? "Guest";
    email = widget.email ?? "No Email";
  }

  // Screens for the tabs.
  List<Widget> _getScreens() {
    return [
      MultiBlocProvider(
        providers: [
          BlocProvider<NowPlayingCubit>(
            create:
                (_) =>
                    NowPlayingCubit(NowPlayingUseCase(NowPlayingRemoteRepo()))
                      ..fetchNowPlaying('now_playing'),
          ),
          BlocProvider<PopularCubit>(
            create:
                (_) =>
                    PopularCubit(NowPlayingUseCase(NowPlayingRemoteRepo()))
                      ..fetchPopular('popular'),
          ),

          BlocProvider<TopRatedCubit>(
            create:
                (_) =>
                    TopRatedCubit(NowPlayingUseCase(NowPlayingRemoteRepo()))
                      ..fetchTopRated('top_rated'),
          ),
          BlocProvider<UpComingCubit>(
            create:
                (_) =>
                    UpComingCubit(NowPlayingUseCase(NowPlayingRemoteRepo()))
                      ..fetchUpComing('upcoming'),
          ),
        ],
        child: Home(name: name, email: email),
      ),

      BlocProvider(
        create:
            (context) => SearchCubit(
              nowPlayingCubit: BlocProvider.of<NowPlayingCubit>(context),
              popularCubit: BlocProvider.of<PopularCubit>(context),
              topRatedCubit: BlocProvider.of<TopRatedCubit>(context),
              upcomingCubit: BlocProvider.of<UpComingCubit>(context),
            ),
        child: SearchScreen(),
      ),
      ProfileScreen(name: name, email: email),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black),
      body: _getScreens()[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.black54,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: _getBottomNavItems(),
      ),
    );
  }

  // Dynamically decide the BottomNavigationBar items based on state or user context
  List<BottomNavigationBarItem> _getBottomNavItems() {
    return const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.white70),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, color: Colors.white70),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle, color: Colors.white70),
        label: 'Profile',
      ),
    ];
  }
}
