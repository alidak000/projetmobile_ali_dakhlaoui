import 'package:filter_listview_example/Ali_profile.dart';
import 'package:filter_listview_example/ghaith_profile.dart';
import 'package:filter_listview_example/page/filter_local_list_page.dart';
import 'package:filter_listview_example/page/filter_network_list_page.dart';
import 'package:filter_listview_example/salim_profile.dart';
import 'package:filter_listview_example/yahya_profile.dart';
import 'package:filter_listview_example/yassine_profile.dart';
import 'package:filter_listview_example/yesmine_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Contacts';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        bottomNavigationBar: buildBottomBar(),
        body: Stack(
          alignment: Alignment.center,
          children: [
            buildPages(),
            Align(
              alignment: AlignmentDirectional(0.84,-0.45),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                child: IconButton(
                  icon:Icon(
                    Icons.info,
                    color: Colors.cyan[600],
                  ),
                  onPressed: (){
                    print("Button Pressed");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ProfilePageAli())
                      );
                  },
                ),
              ),
            ),

            Align(
              alignment: AlignmentDirectional(0.75,-0.2),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                child: IconButton(
                  icon:Icon(
                    Icons.info,
                    color: Colors.cyan[600],
                  ),
                  onPressed: (){
                    print("Button Pressed");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ProfilePageyahya())
                      );
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.75,0.06),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                child: IconButton(
                  icon:Icon(
                    Icons.info,
                    color: Colors.cyan[600],
                  ),
                  onPressed: (){
                    print("Button Pressed");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ProfilePagesalim())
                      );
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.75,0.3),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                child: IconButton(
                  icon:Icon(
                    Icons.info,
                    color: Colors.cyan[600],
                  ),
                  onPressed: (){
                    print("Button Pressed");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ProfilePageghaith())
                      );
                  },
                ),
              ),
            ),

            Align(
              alignment: AlignmentDirectional(0.75,0.55),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                child: IconButton(
                  icon:Icon(
                    Icons.info,
                    color: Colors.cyan[600],
                  ),
                  onPressed: (){
                    print("Button Pressed");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ProfilePageyassine())
                      );
                  },
                ),
              ),
            ),

            Align(
              alignment: AlignmentDirectional(0.75,0.79),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(200, 0, 0, 0),
                child: IconButton(
                  icon:Icon(
                    Icons.info,
                    color: Colors.cyan[600],
                  ),
                  onPressed: (){
                    print("Button Pressed");
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => ProfilePageyesmine())
                      );
                  },
                ),
              ),
            ),
          ],
        ),
  );
    

  Widget buildBottomBar() {
    final style = TextStyle(color: Colors.white);

    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [  
        BottomNavigationBarItem(
          icon: Text('Filter your friend List', style: style),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Text('', style: style),
          title: Text(''),
        ),
      ],
      onTap: (int index) => setState(() => this.index = index),
    );
  }

  Widget buildPages() { 
    switch (index) {
      case 0:
        return FilterLocalListPage();
      case 1:
        return FilterLocalListPage();
      default:
        return Container();
    }
  }
}
