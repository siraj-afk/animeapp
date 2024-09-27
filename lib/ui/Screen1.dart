import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screen2.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(left: 20.0.w,top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,size: 24,),
                    Text('FilmKu', style: TextStyle(
                      color: Color(0xFF110E47),
                      fontSize: 16,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                      height: 0,
                      letterSpacing: 0.32,
                    ),),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0.w),
                      child: Icon(Icons.notifications,size: 24,),
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Now Showing',  style: TextStyle(
                      color: Color(0xFF110E46),
                      fontSize: 16,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w900,
                      height: 0,
                      letterSpacing: 0.32,
                    ),),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0.w),
                      child: Container(
                        width: 61.w,
                        height: 21.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFFE5E4EA)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Center(
                          child: Text('See more', style: TextStyle(
                            color: Color(0xFFAAA8B0),
                            fontSize: 10,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: 0.20,
                          ),),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h,),
                SizedBox( height: 283.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context,position){
                   return   GestureDetector(onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (_)=>Screen2()));
                   },
                     child: Container(
                          width: 143.w,
                          height: 283.h,
                          child: Column(
                            children: [
                              Container(
                                  width: 143.w,
                                  height: 212.h,
                                  child: Image.asset(fit: BoxFit.cover,'assets/img.png')),
                              SizedBox(height: 5.h,),
                              Text('Eternals',          style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 0.28,
                              ),),
                              SizedBox(height: 5.h,),
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
                   );
                      }, separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 10.w,); },),
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
                SizedBox(height: 400.h,
                  child:  ListView.separated(
                      itemCount: 4,
                      itemBuilder: (context, index){
                       return Container(
                          width: 304.w,
                          height: 120.h,
                          child: Row(
                            children: [
                              Container(
                                  width: 85,
                                  height: 120,
                                  child: Image.asset(fit: BoxFit.cover,'assets/img.png')),
                              SizedBox(width: 10.w,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Eternels',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                    letterSpacing: 0.28,
                                  ),),
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
                                      child: ListView.builder(scrollDirection: Axis.horizontal,
                                          itemCount: 3,
                                          itemBuilder: (context,postion){
                                        return Padding(
                                          padding:  EdgeInsets.only(left: 10.0.w),
                                          child: Container(
                                            width: 41.w,
                                            height: 25.h,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFDBE3FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    100),
                                              ),
                                            ),
                                            child: Center(child: Text('Horror', style: TextStyle(
                                              color: Color(0xFF87A3E8),
                                              fontSize: 8,
                                              fontFamily: 'Mulish',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                              letterSpacing: 0.16,
                                            ),)),
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
                        );

                      }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 20.h,); },),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
