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
  var streamInterval = Stream.periodic(Duration(seconds: 1), (index) => index);

  streamInterval.take(20).listen((event) {
    print(event);
  });
}
