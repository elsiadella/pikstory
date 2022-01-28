// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:linear_step_indicator/linear_step_indicator.dart';
// import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:pikstory/screens/history.dart';

// const int STEPS = 5;

class Checkin extends StatefulWidget {
  const Checkin({Key? key}) : super(key: key);

  @override
  _CheckinState createState() => _CheckinState();
}

class _CheckinState extends State<Checkin> {
  // int stepCounter = 0;

  // List<Step> steps = [];

  // @override
  // void initState() {
  //   prepareState();
  //   super.initState();
  // }

  // void prepareState() {
  //   for (var i = 0; i < 100; i++) {
  //     var stepVal = new Step(
  //       title: new Text("Step $i"),
  //       content: new Text("This is the child of $i step"),
  //       isActive: true,
  //     );
  //     steps.add(stepVal);
  //   }
  // }

  List<Step> buildStep() => [
        Step(
          title: Text('D-1'),
          content: Container(
            height: 20.0,
            color: Colors.red,
          ),
        ),
        Step(
          title: Text('D-2'),
          content: Container(
            height: 100.0,
            color: Colors.yellow,
          ),
        ),
        Step(
          title: Text('D-3'),
          content: Container(
            height: 100.0,
            color: Colors.green,
          ),
        ),
        Step(
          title: Text('D-4'),
          content: Container(
            height: 100.0,
            color: Colors.blue,
          ),
        ),
        Step(
          title: Text('D-5'),
          content: Container(
            height: 100.0,
            color: Colors.purple,
          ),
        ),
        Step(
          title: Text('D-6'),
          content: Container(
            height: 100.0,
            color: Colors.amber,
          ),
        ),
        Step(
          title: Text('D-7'),
          content: Container(
            height: 100.0,
            color: Colors.orange,
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Check-in',
              style: TextStyle(
                  color: Color(0xFFFF5959), fontWeight: FontWeight.bold),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFFF5959),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.height * 0.35,
              color: Color(0xFFFCEBF3),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icon_coin.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text('40.103',
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Color(0xFF323232),
                                        fontWeight: FontWeight.w900)),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text('Poin',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Color(0xFF323232),
                                      fontWeight: FontWeight.bold,
                                    )),
                              ],
                            ),
                            Text('Rp 200,51',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFFFF5959),
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        IconButton(
                          splashRadius: 25.0,
                          icon: SvgPicture.asset('assets/icon_history.svg'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => History()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   child: new Stepper(
                  //     type: StepperType.horizontal,
                  //     physics: ClampingScrollPhysics(),
                  //     currentStep: this.stepCounter,
                  //     steps: steps,
                  //     onStepTapped: (step) {
                  //       setState(() {
                  //         stepCounter = step;
                  //       });
                  //     },
                  //     onStepCancel: () {
                  //       setState(() {
                  //         stepCounter > 0 ? stepCounter -= 1 : stepCounter = 0;
                  //       });
                  //     },
                  //     onStepContinue: () {
                  //       setState(() {
                  //         stepCounter < steps.length - 1
                  //             ? stepCounter += 1
                  //             : stepCounter = 0;
                  //       });
                  //     },
                  //   ),
                  // ),
                  Container(
                    height: 200.0,
                    child: Stepper(
                      type: StepperType.horizontal,
                      steps: buildStep(),
                    ),
                  ),

                  // Container(
                  //   margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  //   child: ,
                  //   // child: ,
                  //   // child: LinearIndicator(),
                  //   // child: StepperPage(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class LinearIndicator extends StatefulWidget {
//   const LinearIndicator({ Key? key }) : super(key: key);

//   @override
//   _LinearIndicatorState createState() => _LinearIndicatorState();
// }

// class _LinearIndicatorState extends State<LinearIndicator> {
//   final pageController = PageController();
//   int initialPage = 0;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance?.addPostFrameCallback(
//       (timeStamp) {
//         Timer.periodic(
//           const Duration(milliseconds: 350),
//           (_) {
//             if (mounted) {
//               initialPage += 1;
//               if (initialPage == STEPS - 1) {
//               } else {
//                 pageController.jumpToPage(initialPage);
//               }
//             }
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.grey,
//       child: Center(
//         child: FullLinearStepIndicator(
//           steps: STEPS,
//           lineHeight: 3.5,
//           activeNodeColor: Colors.brown,
//           inActiveNodeColor: const Color(0xffd1d5d8),
//           activeLineColor: Colors.brown,
//           inActiveLineColor: const Color(0xffd1d5d8),
//           controller: pageController,
//           labels: List<String>.generate(STEPS, (index) => "Step ${index + 1}"),
//           complete: () {
//             //typically, you'd want to put logic that returns true when all the steps
//             //are completed here
//             return Future.value(true);
//           },
//         ),
//       ),
//     );
//   }
// }

// class StepIndicatorDemo extends StatelessWidget {
//   const StepIndicatorDemo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: LinearStepIndicator(
//           steps: STEPS,
//           controller: PageController(),
//           labels: List<String>.generate(STEPS, (index) => "Step ${index + 1}"),
//           complete: () {
//             //typically, you'd want to put logic that returns true when all the steps
//             //are completed here
//             return Future.value(true);
//           },
//         ),
//       ),
//     );
//   }
// }

// class StepIndicatorPageViewDemo extends StatefulWidget {
//   const StepIndicatorPageViewDemo({Key? key}) : super(key: key);

//   @override
//   _StepIndicatorPageViewDemoState createState() =>
//       _StepIndicatorPageViewDemoState();
// }

// class _StepIndicatorPageViewDemoState extends State<StepIndicatorPageViewDemo> {
//   final _pageController = PageController();
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: StepIndicatorPageView(
//         steps: STEPS,
//         indicatorPosition: IndicatorPosition.top,
//         labels: List<String>.generate(STEPS, (index) => "Step ${index + 1}"),
//         controller: _pageController,
//         complete: () {
//           //typically, you'd want to put logic that returns true when all the steps
//           //are completed here
//           return Future.value(true);
//         },
//         children: List<Widget>.generate(
//           STEPS,
//           (index) => Container(
//             color: Color(0xffffffff),
//             child: Center(
//               child: Text(
//                 "Page ${index + 1}",
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// class StepperPage extends StatefulWidget {
//   @override
//   _StepperPageState createState() => _StepperPageState();
// }

// class _StepperPageState extends State<StepperPage> {
//   int currentStep = 0;

//   @override
//   Widget build(BuildContext context) {
//     return OrientationBuilder(
//       builder: (BuildContext context, Orientation orientation) {
//         switch (orientation) {
//           case Orientation.portrait:
//             return _buildStepper(StepperType.vertical);
//           case Orientation.landscape:
//             return _buildStepper(StepperType.horizontal);
//           default:
//             throw UnimplementedError(orientation.toString());
//         }
//       },
//     );
//   }

//   CupertinoStepper _buildStepper(StepperType type) {
//     final canCancel = currentStep > 0;
//     final canContinue = currentStep < 3;
//     return CupertinoStepper(
//       type: StepperType.horizontal,
//       currentStep: currentStep,
//       onStepTapped: (step) => setState(() => currentStep = step),
//       onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
//       onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
//       steps: [
//         for (var i = 0; i < 3; ++i)
//           _buildStep(
//             title: Text('Step ${i + 1}'),
//             isActive: i == currentStep,
//             state: i == currentStep
//                 ? StepState.editing
//                 : i < currentStep
//                     ? StepState.complete
//                     : StepState.indexed,
//           ),
//         _buildStep(
//           title: Text('Error'),
//           state: StepState.error,
//         ),
//         _buildStep(
//           title: Text('Disabled'),
//           state: StepState.disabled,
//         )
//       ],
//     );
//   }

//   Step _buildStep({
//     required Widget title,
//     StepState state = StepState.indexed,
//     bool isActive = false,
//   }) {
//     return Step(
//       title: title,
//       subtitle: Text('Subtitle'),
//       state: state,
//       isActive: isActive,
//       content: LimitedBox(
//         maxWidth: 300,
//         maxHeight: 300,
//         child: Container(color: CupertinoColors.systemGrey),
//       ),
//     );
//   }
// }
