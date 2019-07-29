import 'package:flutter/cupertino.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vmsv/pattern/views/loading_view.dart';
import 'package:vmsv/pattern/views/main_view.dart';
import 'package:vmsv/pattern/views/msg_view.dart';

class HomeViewModel extends ChangeNotifier {
  BehaviorSubject<Widget> viewsStream;

  HomeViewModel() {
    this.viewsStream = new BehaviorSubject<Widget>.seeded(LoadingView());

    // simulation for loading
    Observable.timer("Hello", Duration(seconds: 5))
        .listen((msg) => this.viewsStream.add(MainView(
              sayHello: this.sayHello,
            )));
  }

  // this will be call to service such as http or db
  sayHello() {
    this.viewsStream.add(LoadingView());
    Observable.timer("Hello", Duration(seconds: 2)).listen(
      (msg) => this.viewsStream.add(
            MsgView(msg: msg),
          ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    this.viewsStream.close();
  }
}
