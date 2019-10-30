import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class BottomNavigationBarFullDefault extends StatefulWidget{

  const BottomNavigationBarFullDefault():super();

  @override
  State<StatefulWidget> createState()=>_BottomNavigationBarFullDefault();
}

class _BottomNavigationBarFullDefault extends State{
  int _currentIndex = 0;
  void _onItemTapped(int index){
    if(mounted){
      setState(() {
        _currentIndex = index;
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 24,
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      fixedColor: Colors.deepPurple,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text("Home"),
          icon:Icon(Icons.home)
        ),
        BottomNavigationBarItem(
            title: Text("List"),
            icon:Icon(Icons.message)
        )
      ],
    );
  }

}

class _MyHomePageState extends State<Home> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBarFullDefault(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}