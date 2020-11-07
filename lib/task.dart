import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/reusableContainer.dart';
import 'package:task/carType.dart';
import 'package:video_player/video_player.dart';


final textcolor = Colors.black;
final double size = 15.0;
class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  VideoPlayerController _controller ;
  bool _isplaying = false;
  int currentIndex=0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('video/audia3.mkv')
    ..addListener(() {
      final bool isplaying = _controller.value.isPlaying;
      if(isplaying != _isplaying){
        setState(() {
          _isplaying = isplaying;
        });
      }
    })
    ..initialize().then((_){
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/img1.jpg'), fit: BoxFit.fill)),
                width: double.infinity,
                height: 250.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 15.0,
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'تصفح حسب نوع السياره',
                          style: TextStyle(color: Colors.black, fontSize: 22.0),
                        )),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CarType(assetImage: AssetImage('image/hatckback.jpg')),
                        CarType(assetImage: AssetImage('image/wagon.jpg')),
                        CarType(assetImage: AssetImage('image/suv.jpg')),
                        CarType(assetImage: AssetImage('image/sedan.jpg')),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17.0, right: 17.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hatchback',
                            style:
                                TextStyle(color: textcolor, fontSize: size),
                          ),
                          Text(
                            'Sedan',
                            style: TextStyle(
                                color: Colors.blue[900], fontSize: size),
                          ),
                          Text(
                            'SUV',
                            style:
                                TextStyle(color: textcolor, fontSize: size),
                          ),
                          Text(
                            'Wagon',
                            style:
                                TextStyle(color: textcolor, fontSize: size),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                //height: 300.0,
                child: Column(
                  children: [
                    TextType(text1: 'الكل',text2: 'تصفح حسب الماركه',),
                    Container(
                      height: 100.0,
                      child: PageView(
                        controller: PageController(viewportFraction: 0.3),
                        scrollDirection: Axis.horizontal,
                        pageSnapping: true,
                        children: [
                          Brands(assetImage: AssetImage('image/nissan.png'),),
                          Brands(assetImage: AssetImage('image/mer.png'),),
                          Brands(assetImage: AssetImage('image/hyundai.jpg'),),
                          Brands(assetImage: AssetImage('image/toyota.png'),),
                          Brands(assetImage: AssetImage('image/ww.png'),),
                          Brands(assetImage: AssetImage('image/cher.jpg'),),
                          Brands(assetImage: AssetImage('image/mazda.png'),),
                          Brands(assetImage: AssetImage('image/audi.png'),),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 15.0,
                    ),
                    Container(
                      width: double.infinity,
                      //height: 500.0,
                      child: Column(
                        children: [
                          TextType(text1: 'الكل',text2: 'جديد الوكالات',),
                          Container(
                            height: 200.0,
                            child: PageView(
                              controller: PageController(viewportFraction: 0.6),
                              scrollDirection: Axis.horizontal,
                              pageSnapping: true,
                              children: [
                                ReusableContainer(
                                  containerheight: 160.0,
                                  assetImage: AssetImage('image/audia3.jpg'),
                                ),
                                ReusableContainer(
                                  containerheight: 160.0,
                                  assetImage: AssetImage('image/audia3_3.jpg'),
                                ),
                                ReusableContainer(
                                  containerheight: 160.0,
                                  assetImage: AssetImage('image/audia3_4.jpg'),
                                ),
                                ReusableContainer(
                                  containerheight: 160.0,
                                  assetImage: AssetImage('image/img5.jpg'),
                                ),
                                ReusableContainer(
                                  containerheight: 160.0,
                                  assetImage: AssetImage('image/img1.jpg'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 15.0,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    TextType(text1: 'الكل',text2: 'فيديو',),
                    Container(
                      height: 208.0,
                      child: PageView(
                        controller: PageController(viewportFraction: 0.6),
                        scrollDirection: Axis.horizontal,
                        pageSnapping: true,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.grey[400],width: 2.0),
                            ),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Container(
                                  child: _controller.value.initialized ? AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller),
                                  ):Container(),
                                ),
                                FloatingActionButton(onPressed: _controller.value.isPlaying ? _controller.pause : _controller.play ,
                                  child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),

                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(color: Colors.grey[400],width: 2.0),
                            ),
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Container(
                                  child: _controller.value.initialized ? AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller),
                                  ):Container(),
                                ),
                                FloatingActionButton(onPressed: _controller.value.isPlaying ? _controller.pause : _controller.play ,
                                  child: Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),

                                )
                              ],
                            ),
                          )


                        ],
                      ),
                    ),
                  ],
                ),
              ),
              BottomNavigationBar(
                currentIndex: currentIndex,
                backgroundColor: Colors.deepPurple,
                  selectedItemColor: Colors.white,
                  iconSize: 30.0,
                  unselectedFontSize:22.0 ,
                  unselectedItemColor: Colors.white,
                  type: BottomNavigationBarType.fixed,
                 items: [
                   BottomNavigationBarItem(
                       icon:Icon(Icons.car_repair),
                     title: Text('التامين'),
                   ),
                   BottomNavigationBarItem(
                     icon:Icon(Icons.car_rental),
                     title: Text('التثمين'),
                   ),
                   BottomNavigationBarItem(
                     icon:Icon(Icons.car_rental),
                     title: Text('الخدمات'),
                   ),
                   BottomNavigationBarItem(
                     icon:Icon(Icons.car_rental),
                     title: Text('الوكالات'),
                   ),
                 ]

             )
            ],
          ),
        ),
      ),
    );
  }
}
