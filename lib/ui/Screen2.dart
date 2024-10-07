import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen2 extends StatefulWidget {
  final String image;
  final String title;
  final String synopsis;
  final List<dynamic> genre;
  const Screen2({super.key, required this.image, required this.title, required this.synopsis, required this.genre});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                  width: 375.w,
                  height: 300.h,
                  child:  Image.network(
                      fit: BoxFit.cover,
                      widget.image)),
              Padding(
                padding:  EdgeInsets.only(top: 50.0.h),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: 20.0.w),
                      child: GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },

                          child: Icon(Icons.arrow_back,color: Colors.white,)),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(right: 20.0.w),
                      child: Icon(Icons.menu,color: Colors.white,),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 250.0),
                child: Container(
                  width: 375.w,
                  height: 569.h,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w,top: 15.h),
                    child: SingleChildScrollView(
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                              height: 0,
                              letterSpacing: 0.40,
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.yellow,),
                              SizedBox(width: 3.w,),
                              Text('9.1/10 IMDb', style: TextStyle(
                                color: Color(0xFF9B9B9B),
                                fontSize: 12.sp,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: 0.24,
                              ),)
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          SizedBox(
                            height: 20.h,
                            width: double.infinity.w,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.genre.length,
                              itemBuilder: (context, position) {
                                return Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    width: 61.w,
                                    height: 25.h,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFDBE3FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(
                                            100),
                                      ),
                                    ),
                                    child: Center(
                                        child: Text(
                                          widget.genre[position].toString(),
                                          style: TextStyle(
                                            color: Color(0xFF87A3E8),
                                            fontSize: 8,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                            letterSpacing: 0.16,
                                          ),
                                        )),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            children: [
                              Container(
                                width: 109,
                                height: 34,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Length',  style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),),
                                    SizedBox(height: 2.h,),
                                    Text('2h 28min',          style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                width: 109,
                                height: 34,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Lanquage',  style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),),
                                    SizedBox(height: 2.h,),
                                    Text('English',          style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                width: 109,
                                height: 34,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Rating',  style: TextStyle(
                                      color: Color(0xFF9B9B9B),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.24,
                                    ),),
                                    SizedBox(height: 2.h,),
                                    Text('PG-13',          style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Text('Description',  style: TextStyle(
                            color: Color(0xFF110E47),
                            fontSize: 16.sp,
                            fontFamily: 'Merriweather',
                            fontWeight: FontWeight.w900,
                            height: 0,
                            letterSpacing: 0.32,
                          ),),
                          SizedBox(height: 20.h,),
                          Text(
                            widget.synopsis,
                            style: TextStyle(
                              color: Color(0xFF9B9B9B),
                              fontSize: 12.sp,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.24,
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Cast', style: TextStyle(
                                color: Color(0xFF110E46),
                                fontSize: 16.sp,
                                fontFamily: 'Merriweather',
                                fontWeight: FontWeight.w900,
                                height: 0,
                                letterSpacing: 0.32,
                              ),),
                              Padding(
                                padding:  EdgeInsets.only(right: 20.0.w),
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
                                      fontSize: 10.sp,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.20,
                                    ),),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 72.w,
                                height: 110.h,
                                child: Column(
                                  children: [
                                    Image.asset('assets/img_4.png'),
                                    SizedBox(height: 5.h,),
                                    Text('Tom Holland', style: TextStyle(
                                      color: Color(0xFF110E47),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                width: 72.w,
                                height: 110.h,
                                child: Column(
                                  children: [
                                    Image.asset('assets/img_5.png'),
                                    SizedBox(height: 5.h,),
                                    Text('Zendaya', style: TextStyle(
                                      color: Color(0xFF110E47),
                                      fontSize: 12,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),)
                                  ],
                                ),
                              ),
                              Container(
                                width: 72.w,
                                height: 110.h,
                                child: Column(
                                  children: [
                                    Image.asset('assets/img_6.png'),
                                    SizedBox(height: 5.h,),
                                    Text('Benedict\nCumberbatch', style: TextStyle(
                                      color: Color(0xFF110E47),
                                      fontSize: 11,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: 0.24,
                                    ),)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.0.w),
                                child: Container(
                                  width: 72.w,
                                  height: 110.h,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/img_7.png'),
                                      SizedBox(height: 5.h,),
                                      Text('Jacon\nBatalon', style: TextStyle(
                                        color: Color(0xFF110E47),
                                        fontSize: 12,
                                        fontFamily: 'Mulish',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.24,
                                      ),)
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
