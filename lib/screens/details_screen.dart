import 'dart:math';

import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> with TickerProviderStateMixin {

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
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: SingleChildScrollView(
        physics : const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(0, 0),
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Expanded(
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(args.bgImg),
                                fit: BoxFit.cover,
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Container(
                                height: 60,
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Expanded(
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              width: double.infinity,
                              color: const Color(0xff3E3963),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 140, left: 20, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'OVERVIEW',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 2,
                                          color: Colors.white,
                                          fontSize: 20),
                                    ),
                                    const SizedBox(height: 5),
                                    Container(
                                      height: 3,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      width: double.infinity,
                                      height: 170,
                                      child: Text(
                                        args.description,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0,
                                            color: Colors.lightBlueAccent,
                                            fontSize: 16,),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.blue,
                              height: 60,
                              padding: const EdgeInsets.only(left: 20, right: 20,top: 7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('START FROM',style: TextStyle(color: Colors.white,fontSize: 14),),
                                      Text('\$ ${args.dollar}m',style: const TextStyle(color: Colors.white,fontSize: 25),),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text('BOOK NOW',style: const TextStyle(color: Colors.white,fontSize: 20),),
                                      Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    alignment: const Alignment(0, -2),
                    children: [
                      Container(
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
                        height: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 80),
                              child: Text(
                                args.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 0),
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
                            Container(
                              height: 3,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(right: 40, left: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Image.asset(
                                            'assets/images/ic_distance.png'),
                                      ),
                                      Text(
                                        "${args.dis} km",
                                        style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.lightBlueAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Transform.scale(
                                        scale: 0.7,
                                        child: Image.asset(
                                            'assets/images/ic_gravity.png'),
                                      ),
                                      Text(
                                        "${args.speed} m/s²",
                                        style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.lightBlueAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                height: 425,
                                color: const Color(0xff3E3963),
                                child: SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration:  const BoxDecoration(
                                          gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: <Color>[Color(0xff2991FD), Color(0xff00C5FD)]),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10),
                                          ),
                                        ),
                                        height: 75,
                                        alignment: Alignment.center,
                                        child:  Text('Welcome to ${args.name}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 33,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      AnimatedBuilder(
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
                                                image: AssetImage(args.img),
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
                                      const SizedBox(height: 30),
                                      const Text('Distance to Sun',
                                        style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      ),
                                      const SizedBox(height: 5),
                                       Text('${args.disSun} million km',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 33,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      const Text('Distance to Earth',
                                        style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text('${args.disEarth} million km',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 33,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              );
                            },
                          );
                        },
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
                                  image: AssetImage(args.img),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
