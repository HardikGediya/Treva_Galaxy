import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pr2_animator_app/models/galaxy_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat();
  }

  @override
  dispose(){
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3E3963),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[Color(0xff2991FD), Color(0xff00C5FD)]),
          ),
        ),
        title: const Text('treva', style: TextStyle(fontSize: 30)),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 30,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(right: 20, top: 50, bottom: 50),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 50);
        },
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed('details_screen', arguments: galaxy[i]);
            },
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff434273),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: const Offset(0, 0),
                          spreadRadius: 0,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    height: 175,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 80, top: 30, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                galaxy[i].name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                              const Icon(
                                Icons.more_vert,
                                size: 30,
                                color: Colors.lightBlueAccent,
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 80, right: 20),
                          child: Text(
                            'Milkyway Galaxy',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.lightBlueAccent,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 80, right: 20),
                          child: Container(
                            height: 3,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.only(left: 70, right: 20),
                          child: Row(
                            children: [
                              Transform.scale(
                                scale: 0.5,
                                child: Image.asset(
                                    'assets/images/ic_distance.png'),
                              ),
                              Text(
                                "${galaxy[i].dis} km",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                              Transform.scale(
                                scale: 0.5,
                                child: Image.asset(
                                    'assets/images/ic_gravity.png'),
                              ),
                              Text(
                                "${galaxy[i].speed} m/s²",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.lightBlueAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: AnimatedBuilder(
                    animation: animationController,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(0, 0),
                              spreadRadius: 0,
                              blurRadius: 10,
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(galaxy[i].img),
                            fit: BoxFit.cover,
                          )),
                    ),
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: animationController.value * 2 * pi,
                        child: child,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: galaxy.length,
      ),
    );
  }
}
