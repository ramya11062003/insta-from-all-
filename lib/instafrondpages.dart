import 'package:flutter/material.dart';

import 'instaimg.dart';



class insfrond extends StatefulWidget {
  const insfrond({super.key});

  @override
  State<insfrond> createState() => _insfrondState();
}

class _insfrondState extends State<insfrond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView (
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
          {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 500,
                backgroundColor: Colors.white,
                
                ///profile lock
                
                leading: Icon(Icons.lock),
                
                ///name
                
                title: Text('aravinth_sakthivel_',
                  style:
                  TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                
                ///menu details
                
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon((Icons.add_box_outlined),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.menu),
                  ),
                ],

                ///pofile details

                pinned: false,
                centerTitle: false,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.none,
                  background: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                      padding: const EdgeInsets.only(top: 60,left: 20),
                      child: Container(
                       height: 100,
                       width:  100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("assets/img/a13.jpg"),
                            fit: BoxFit.fill
                        ),
                      ),
                      ),
                    ),

                          ///post
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 60,left: 20),
                            child: Column(
                              children: [
                                Text("67",
                                  style:
                                  TextStyle(fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text("Post",
                                  style: TextStyle(fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          
                          ///followers
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 60,left: 20),
                            child: Column(
                              children: [
                                Text("138",
                                  style: TextStyle(fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text("Followers",
                                  style:
                                  TextStyle(fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),


                          ///following
                          
                          Padding(
                            padding: const EdgeInsets.only(top: 60,left: 20),
                            child: Column(
                              children: [
                                Text("179",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
                                Text("Following",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ),
                        ],
                      ),

                      ///pofile details
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text("Aravinthan",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.man,
                              color: Colors.deepOrange,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text("Right Person Know Your Worth",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.deepOrange,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text("Open Traveler",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.location_on,
                              color: Colors.blue,),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1.0),
                            child: ElevatedButton(onPressed: (){},
                              child: Text("Edit pfofile",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1.0),
                            child: ElevatedButton(onPressed: (){},
                              child: Text("Share profile",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1.0),
                            child: ElevatedButton(onPressed: (){},
                              child: Icon(Icons.person_add,color: Colors.black,
                                ),
                            ),
                          ),
                        ],
                      ),

                      ///highlight

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 130,
                          child: ListView.builder(scrollDirection: Axis.horizontal,
                          itemCount: a1.length,
                          itemBuilder: (BuildContext con, index){
                            return Column(children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,right: 5),
                                child: Container(
                                  height: 100,
                                  width:  100,
                                  decoration: BoxDecoration(shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(a1[index].image),fit: BoxFit.fill,
                                  ),
                                  ),
                                ),
                              ),
                              Text(a1[index].text,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                            ],
                            );
                          }
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                ///tabbar

                bottom:
                PreferredSize(
                  preferredSize: Size.fromHeight(40),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.green
                    ),
                    child: TabBar(
                      labelColor: Colors.deepOrange,
                      indicatorColor: Colors.black,
                      tabs: [
                        Tab(icon: Icon(Icons.grid_on_rounded,
                        ),
                        ),
                        Tab(icon: Icon(Icons.video_library_sharp,
                        ),
                        ),
                        Tab(icon: Icon(Icons.photo_camera_front_outlined,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                // DefaultTabController(length: 3,
                // child: Scaffold(
                //   appBar: AppBar(centerTitle: true,
                //     bottom: PreferredSize(preferredSize: Tabbar,
                //       child: Material(color: Colors.green,child: TabBar,),),),
                // ),),
              ),
            ];
      }, body: TabBarView(
          children: [
            Container(
              height: 100,
              width:  100,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2/2,

                  crossAxisSpacing:15,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 150,
                ),
                itemCount: 27,
                itemBuilder: (BuildContext ctx, index)
                  {
                    return Card(elevation: 50,
                    child: Container(
                      height: 50,
                      //width:  200,
                      //color: Colors.lightBlueAccent,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(a1[index].image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    );
                  }
              ),
            ),
            Container(
              height: 100,
              width:  100,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2/2,

                    crossAxisSpacing:15,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150,
                  ),
                  itemCount: 27,
                  itemBuilder: (BuildContext ctx, index)
                  {
                    return Card(elevation: 50,
                      child: Container(
                        height: 50,
                        //width:  200,
                        //color: Colors.lightBlueAccent,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(a2[index].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
            Container(
              height: 100,
              width:  100,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 2/2,

                    crossAxisSpacing:15,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150,
                  ),
                  itemCount: 27,
                  itemBuilder: (BuildContext ctx, index)
                  {
                    return Card(elevation: 50,
                      child: Container(
                        height: 50,
                        //width:  200,
                        //color: Colors.lightBlueAccent,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(a3[index].image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}
