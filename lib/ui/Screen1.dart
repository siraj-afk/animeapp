import 'package:animeapp/bloc/anime_bloc.dart';
import 'package:animeapp/repositery/model/animemodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  late AnimeModel anime;

  @override
  void initState() {
    BlocProvider.of<AnimeBloc>(context).add(FetchAnimeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0.w, top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      size: 24,
                    ),
                    Text(
                      'FilmKu',
                      style: TextStyle(
                        color: Color(0xFF110E47),
                        fontSize: 16,
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.w900,
                        height: 0,
                        letterSpacing: 0.32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0.w),
                      child: Icon(
                        Icons.notifications,
                        size: 24,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Now Showing',
                      style: TextStyle(
                        color: Color(0xFF110E46),
                        fontSize: 16,
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.w900,
                        height: 0,
                        letterSpacing: 0.32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0.w),
                      child: Container(
                        width: 61.w,
                        height: 21.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFE5E4EA)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'See more',
                            style: TextStyle(
                              color: Color(0xFFAAA8B0),
                              fontSize: 10,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 283.h,
                  child: BlocBuilder<AnimeBloc, AnimeState>(
                    builder: (context, state) {
                      if (state is AnimeblocLoading) {
                        return Center(child: CircularProgressIndicator());
                      }
                      if (state is AnimeblocError) {
                        return RefreshIndicator(
                            child: Text('error'),
                            onRefresh: () async {
                              return BlocProvider.of<AnimeBloc>(context)
                                  .add(FetchAnimeEvent());
                            });
                      }
                      if (state is AnimeblocLoaded) {
                        anime = BlocProvider.of<AnimeBloc>(context).animeModel;
                        return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: anime.data!.length,
                          itemBuilder: (context, position) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => Screen2(image: anime.data![position].image.toString(),
                                      title: anime.data![position].title.toString(),
                                      synopsis: anime.data![position].synopsis.toString(),
                                      genre: anime.data![position].genres!,)));
                              },
                              child: SingleChildScrollView(
                                child: Container(
                                  width: 143.w,
                                  height: 290.h,
                                  child: Column(
                                    children: [
                                      Container(
                                          width: 143.w,
                                          height: 212.h,
                                          child: Image.network(
                                            anime.data![position].image
                                                .toString(),
                                            fit: BoxFit.cover,
                                          )),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        anime.data![position].title.toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                          letterSpacing: 0.28,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Text(
                                            '9.1/10 IMDb',
                                            style: TextStyle(
                                              color: Color(0xFF9B9B9B),
                                              fontSize: 12,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                              letterSpacing: 0.24,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10.w,
                            );
                          },
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        color: Color(0xFF110E46),
                        fontSize: 16.sp,
                        fontFamily: 'Merriweather',
                        fontWeight: FontWeight.w900,
                        height: 0,
                        letterSpacing: 0.32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child: Container(
                        width: 61.w,
                        height: 21.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFFE5E4EA)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'See more',
                            style: TextStyle(
                              color: Color(0xFFAAA8B0),
                              fontSize: 10,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 0.20,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 400.h,
                  child: BlocBuilder<AnimeBloc, AnimeState>(
                    builder: (context, state) {
                      if (state is AnimeblocLoading) {
                        return Center(child: CircularProgressIndicator());
                      }
                      if (state is AnimeblocError) {
                        return RefreshIndicator(
                            child: Text('error'),
                            onRefresh: () async {
                              return BlocProvider.of<AnimeBloc>(context)
                                  .add(FetchAnimeEvent());
                            });
                      }
                      if (state is AnimeblocLoaded){
                        anime = BlocProvider.of<AnimeBloc>(context).animeModel;
                        return ListView.separated(
                          itemCount: anime.data!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => Screen2(image: anime.data![index].image.toString(),
                                      title: anime.data![index].title.toString(),
                                      synopsis: anime.data![index].synopsis.toString(),
                                      genre: anime.data![index].genres!,)));
                              },
                              child: Container(
                                width: 304.w,
                                height: 120.h,
                                child: Row(
                                  children: [
                                    Container(
                                        width: 85,
                                        height: 120,
                                        child: Image.network(
                                            fit: BoxFit.cover,
                                            anime.data![index].image.toString())),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 250.w,
                                          child: Text(
                                            anime.data![index].title.toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                              letterSpacing: 0.28,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 3.h,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.yellow,
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              '9.1/10 IMDb',
                                              style: TextStyle(
                                                color: Color(0xFF9B9B9B),
                                                fontSize: 12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                                letterSpacing: 0.24,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        SizedBox(
                                            height: 20.h,
                                            width: 250.w,
                                            child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                itemCount: anime
                                                    .data![index].genres!.length,
                                                itemBuilder: (context, postion) {
                                                  return Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 10.0.w),
                                                    child: Container(
                                                      width: 41.w,
                                                      height: 25.h,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFDBE3FF),
                                                        shape:
                                                        RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(100),
                                                        ),
                                                      ),
                                                      child: Center(
                                                          child: Text(
                                                            anime.data![index]
                                                                .genres![postion]
                                                                .toString(),
                                                            style: TextStyle(
                                                              color:
                                                              Color(0xFF87A3E8),
                                                              fontSize: 8,
                                                              fontFamily: 'Mulish',
                                                              fontWeight:
                                                              FontWeight.w700,
                                                              height: 0,
                                                              letterSpacing: 0.16,
                                                            ),
                                                          )),
                                                    ),
                                                  );
                                                })),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.lock_clock,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              '1h 47m',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                                letterSpacing: 0.24,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 20.h,
                            );
                          },
                        );
                      }else {
                        return SizedBox();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
