import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:glitters/glitters.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';




void main(){
  runApp(const MyWebSite());
}

class MyWebSite extends StatelessWidget {
  const MyWebSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahib Singh',
      home: const AniPage(),
      theme: ThemeData.dark(),

    );
  }
}

class AniPage extends StatefulWidget {
  const AniPage({Key? key}) : super(key: key);

  @override
  State<AniPage> createState() => _AniPageState();
}

class _AniPageState extends State<AniPage> with TickerProviderStateMixin{ //Ticker is a class that calls the new state after every new frame
  // Mixin is used in dart for inheritance
  //tickerproviderstatemixin creates new tickers that tick only when the current tree is enabled
 bool selected = false;

 late YoutubePlayerController _controller1 ;
 final yt_url = "https://youtu.be/G_GE0GZbBLc";
 String intern_pub = ' →  Interned at Hindustan Power Projects Private Limited under the head\n of '
     'the hydro-power segment. Looked over the optimal physics and\n electrical needs '
     'for the new pump hydro energy storage system to be\n installed in Himachal Pradesh,'
     'using Manning\'s equation to calculate\n frictional losses and utilizing data by the Ministry of New and\n Renewable Energy to estimate potential revenue.\n\n'

     ' →  Interned at Avant Grade Clean Room & Engg. Worked on a project\n related to HVAC requirements of the client '
     'conducting a detailed study\n mapping the mechanical requirements and provided suggestions to the\n technical team to '
     'build a HVAC system with significantly improved efficiency\n\n'

     ' →  Conducted research on Smart Home Energy Management Systems (HEMS), focusing on energy efficiency by '
     'using an optimal strategy to intelligently\n react to the demand response(DR). Also researched as to how employing\n '
     'smart two-way energy grids could help industries as well as the environment through proper loa distribution in times of abnormal demand '
     'The paper was published in the ';

 String paper = 'International Journal for Research Publication and Seminar.';
 final Uri _url = Uri.parse('https://www.jrps.in/uploads/2022/v13i2/23.v13i2.pdf');
 ScrollController _controller = ScrollController();
 void jump1(){
   _controller.jumpTo(0);
   but1 = true;
   but2 = false;
   but3 = false;
   but4 = false;
 }
 void jump2(){
   _controller.jumpTo(200);
   but1 = true;
   but2 = false;
   but3 = false;
   but4 = false;
 }
 void jump3(){
   _controller.jumpTo(200);
   but1 = true;
   but2 = false;
   but3 = false;
   but4 = false;
 }
 void jump4(){
   _controller.jumpTo(200);
   but1 = true;
   but2 = false;
   but3 = false;
   but4 = false;
 }

 bool but1 = false;
 bool but2 = false;
 bool but3 = false;
 bool but4 = false;
 void initState(){ // initial state of variables before they are compiled
   final yt_id = YoutubePlayer.convertUrlToId(yt_url);
   _controller1 = YoutubePlayerController(initialVideoId: yt_id!, flags: YoutubePlayerFlags(//the ! tells the compiler that the variable is not null
     autoPlay: false
   )
   );
   super.initState();
 }
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
    children: <Widget>[GlitterStack(width: MediaQuery.of(context).size.width
      ,height: MediaQuery.of(context).size.height,backgroundColor: Colors.black,duration: const Duration(milliseconds: 500), interval: Duration.zero,maxOpacity: 0.7,
      children: [const Glitters(color: Colors.white) , const Glitters(color: Colors.yellow ), const Glitters(color: Colors.white) , const Glitters(color: Colors.yellow),
        const Glitters(color: Colors.white) , const Glitters(color: Colors.yellow ,  ), const Glitters(color: Colors.white) , const Glitters(color: Colors.yellow),
        const Glitters(color: Colors.white) , const Glitters(color: Colors.yellow ,  ), const Glitters(color: Colors.white) , const Glitters(color: Colors.yellow)],
      ) ,
    Positioned(left: 10 ,top: 300,child:TextButton(onPressed: jump1,child: Text('Introduction' , style: TextStyle(fontSize:but1? 25:20 ,color: but1? Colors.white: null
    ),
    ),
    style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states){
          if
          (states.contains(MaterialState.hovered))
            return Colors.white;
            return Colors.white38;
        }
    ),
    ),
    )

    )
    ,
      Positioned(height: MediaQuery.of(context).size.height,width:1080 , left: 200 ,child:Card(elevation: 500,

        child:Stack(children: [Container(color: Colors.white,) ,
            Positioned(width: 100 , height: 100 , left: 30, top: 30,child: Image.asset('android/assets/images/Subject-PhotoRoom-photoaidcom-cropped.png')),

            Positioned(top: 80 , left: 150,bottom: 50 , right: 0,child:SingleChildScrollView( controller: _controller ,child:
            // have to use bottom and right as well to make scroll work
            Column( crossAxisAlignment: CrossAxisAlignment.start,
              children:[Positioned(left: 130 , top: 550,child:Text('Hi There! Myself Sahib\n '
             , style: TextStyle(fontSize: 45, color: Colors.black , fontWeight: FontWeight.bold , fontFamily: 'AARDV' ))
              )
              ,
                 Text('Freshman at Georgia Tech | Rise Global Winner\n| TOI Natl. AI Challenge Winner | Aspiring Quantitative Analyst\n' ,
              style:  TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.black ,fontFamily: 'AARDV' ),),
                     Text(
        'I am a member of Civics Unplugged , Youth Economics Forum and the\nNew York Academy of Sciences focusing on'
            'problems concerning\nthe economic and financial sphere.\n\n'
            'My expertise lie in the field of economic analysis and financial forecasting\nusing the Macroeconomic, Security Derivative and Financial Sentiment Data\n'
            'while incorporating Machine Learning & Data Analysis to provide optimal results.\n\n '
        , style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 25), ),
                   Text('I pitched a pseudo-startup to one of the biggest investor in India. (Timestamp : 1:23)\n',
                style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.black ),),
                   YoutubePlayer(controller: _controller1 ,
                       showVideoProgressIndicator: true,
                      width: 800,


                     
        ),
                

             Padding(padding: EdgeInsets.only(top: 40.0) , child: Text(''
                 'Internships and Publications\n' , style: TextStyle(fontFamily: 'AARDV' , fontWeight: FontWeight.bold,
               fontSize: 30, color: Colors.black
             )
               ,)
               ,),
                RichText(text:TextSpan(children: [TextSpan(text: intern_pub,style: TextStyle(color: Colors.black,
                fontWeight: FontWeight.w600 , fontSize: 25)

                ),
                   TextSpan(text: paper,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color:Colors.black,
                       fontFamily: 'AARDV'),recognizer: TapGestureRecognizer()
                     ..onTap = () { launchUrl(_url);

                   }
                   )
                ]
                )
                ),
                Padding(padding: EdgeInsets.only(top: 80),child:Text('Projects and Accolades\n' , style: TextStyle(fontFamily: 'AARDV' , fontWeight: FontWeight.bold,
                    fontSize: 30, color: Colors.black),)
                ),
                  Text('→ Built a Convolutional Neural Network that used custom made dataset\n to predict '
                    'time period before volcanic eruption using the smoke image\n data of different volcanoes. '
                    'The model classifies the volcanoes into\n different categories using image classification. '
                    'The project won 3rd\n place in the national AI challenge by TOI.\n\n'

                    '→ Building a 3-part model that uses sentiment analysis, SARIMAX\n forecasting and '
                    'quantum multiple regression to study, analyse and\n predict US treasury bond prices '
                    'using historical data and news articles\n of related factors affecting the bond price and yield.\n\n',
                style:TextStyle(color:selected? Colors.black:Colors.white , fontWeight: FontWeight.w600 , fontSize: 25))
                ,
                Text('Courses and Skills\n' , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color:  Colors.black,
                fontFamily: 'AARDV')
                ),
                Padding(padding: EdgeInsets.only(bottom: 20),child:Text('Completed the following courses:',
                  style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 27 , fontFamily: 'oswo'),
                )),
                Text('→ Neural Networks and Deep Learning - Prof. Andrew NG.\n'
                     '→ Financial Markets - Prof. Robert J. Shiller\n'
                     '→ Introduction to Mathematical Thinking - Prof. Keith Devlin\n\n',
                style: TextStyle(fontWeight: FontWeight.w600 , color: Colors.black , fontSize: 20),),
                Padding(padding: EdgeInsets.only(bottom: 20),child:Text('Proficiency in:',
                  style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 27 , fontFamily: 'oswo'),
                )
                ),
                Text('→ Flutter and Firebase development\n'
                     '→ Python and related libraries(numpy, matplotlib,pandas, statsmodel ,etc.)\n'
                     '→ MS Office\n'
                     '→ Basic OOP and DSA in Java',
                  style: TextStyle(color: Colors.black , fontSize: 20 , fontWeight: FontWeight.w600),)
              ]


                   )
            )

            )
        ],
         ) ,
      )
      ),AnimatedPositioned(width: selected? 75:200, height: selected? 75:200,left: selected? 5: 650,top: selected? 10: 290,
        duration: const Duration(milliseconds: 1000) , curve: Curves.fastOutSlowIn,child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            if(!selected){
          setState(() {
        selected = !selected;
        }
        );
      }
            },
        child: Image.asset('android/assets/images/1-1.PNG')
    ),
    ),
    ],
    );

  }
}
