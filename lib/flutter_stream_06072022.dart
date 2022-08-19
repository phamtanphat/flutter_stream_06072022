import 'dart:async';

import 'package:rxdart/rxdart.dart';

void main(List<String> arguments) {
  // Tao ra stream

  // 1: Thông qua future
  // var streamFuture = Stream.fromFuture(
  //     Future.delayed(Duration(seconds: 2), () => 2)
  // ).asBroadcastStream();
  //
  // streamFuture.listen((event) {
  //   print(event);
  // });
  //
  // streamFuture.listen((event) {
  //   print(event);
  // });

  // 2: Interval
  // var streamInterval = Stream.periodic(Duration(seconds: 1), (index) => index);
  //
  // streamInterval.take(20).listen((event) {
  //   print(event);
  // });

  // 3: StreamController
  // StreamController<String> nameController = StreamController();
  //
  // nameController.stream.listen((event) {
  //   print(event);
  // });
  //
  // Future.delayed(Duration(seconds: 2), () {
  //   nameController.sink.add("Pham Tan Phat");
  // });

  // BehaviorSubject, PublishSubject

  var behaviorSubject = BehaviorSubject<int>();

  behaviorSubject.listen((value) {
    print("Current time 1: $value");
  });

  behaviorSubject.add(0);
  behaviorSubject.add(1);
  behaviorSubject.add(2);

  behaviorSubject.listen((value) {
    print("Current time 2: $value");
  });

  behaviorSubject.add(3);
  behaviorSubject.add(4);
  behaviorSubject.add(5);
}
