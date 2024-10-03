import "package:flutter/material.dart";

void  main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();

}

class _QuizAppState extends State{
  List<Map> allQuestions=[
    {
      "Question":"Which of the following is not a Java features?",
      "Options":["Dynamic","Architecture Neutral","Use of pointers","Object-oriented"],
      "CorrectAnswer":2
    },
    {
      "Question":"___ is used to find and fix bugs in the Java programs.",
      "Options":["JVM","JRE","JDK","JDB"],
      "CorrectAnswer":3
    },
    {
      "Question":"Which of the following for loop declaration is not valid?",
      "Options":["for ( int i = 99; i >= 0; i / 9 )","for ( int i = 7; i <= 77; i += 7 )","for ( int i = 20; i >= 2; - -i )","for ( int i = 2; i <= 20; i = 2* i )"],
      "CorrectAnswer":0
    },
    {
      "Question":"Which of the following is true about the anonymous inner class?",
      "Options":["It has only methods","Objects can't be created","It has a fixed class name","It has no class name"],
      "CorrectAnswer":3
    },
    {
      "Question":"In java, jar stands for___.",
      "Options":["Java Archive Runner","Java Application Resource","Java Application Runner","None of the above"],
      "CorrectAnswer":2
    },

  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex=-1;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){
      if(answerIndex==allQuestions[currentQuestionIndex]["CorrectAnswer"]){
        return const WidgetStatePropertyAll(Color.fromARGB(255, 12, 223, 19));
      }else if(selectedAnswerIndex == answerIndex){
        return const WidgetStatePropertyAll(Color.fromARGB(255, 231, 32, 18));
      }else{
        return const WidgetStatePropertyAll(null);
      }

    }else{
      return const WidgetStatePropertyAll(null);
    }
    
  }

  bool isQuestionPage=true;

  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen(){
    if(isQuestionPage == true){
      return Scaffold(
      appBar:AppBar(
        title:const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Color.fromARGB(255, 106, 4, 124),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 15, 102, 173),
      ),
      body:Column(
        
        children: [
          const SizedBox(
            height:30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 250,
              ),
              Text(
                "Question: ${ currentQuestionIndex+ 1} / ${allQuestions.length}",
                style:const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),

            ],
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 460,
            height: 55,
            child: Text(
              allQuestions[currentQuestionIndex]["Question"],
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               SizedBox(
            height: 50,
            width:300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),
              onPressed: () {
                if(selectedAnswerIndex ==-1){
                  selectedAnswerIndex =0;
                  
                  setState(() {
                    
                  });
                }
                
              },
              child: Text(
                allQuestions[currentQuestionIndex]["Options"][0],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),
              onPressed: () {
                if(selectedAnswerIndex ==-1){
                  selectedAnswerIndex =1;
  
                  
                  setState(() {
                    
                  });
                }
                
              },
              child: Text(
                allQuestions[currentQuestionIndex]["Options"][1],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
          ),

            ],
          ),
          const SizedBox(
            height: 55,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),
              onPressed: () {
                if(selectedAnswerIndex ==-1){
                  selectedAnswerIndex =2;
                
                  setState(() {
                    
                  });
                }
                
              },
              child: Text(
                allQuestions[currentQuestionIndex]["Options"][2],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),
              onPressed: () {
                if(selectedAnswerIndex ==-1){
                  selectedAnswerIndex =3;
                 
                  setState(() {
                    
                  });
                }
                
              },
              child: Text(
                allQuestions[currentQuestionIndex]["Options"][3],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w500,
                ),
              ),
            ),
          ),]
      ),
          
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          if(selectedAnswerIndex != -1){
            if(currentQuestionIndex < allQuestions.length -1){
              currentQuestionIndex++;
            }else{
              isQuestionPage = false;
            }
            selectedAnswerIndex=-1;
            setState(() {});
          }
        },
        
        backgroundColor: const Color.fromARGB(255, 10, 89, 153),
        child: const Icon(
          Icons.forward,
          color: Colors.orange,
          
        ),
      ),
      backgroundColor: Color.fromARGB(255, 243, 187, 134),
    );
    }
    
    else{
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 9, 96, 167),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://media1.giphy.com/media/v9vezsxwA5hoOLfDAd/giphy.gif?cid=6c09b952kj65jzdwifmhawwhazy9wow27ogx17xlonlsl94e&ep=v1_internal_gif_by_id&rid=giphy.gif&ct=s",height: 400,),
              const SizedBox(height:30),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Score: ",
                style: const TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        backgroundColor:Color.fromARGB(255, 238, 124, 162),
      );
    }
  }

}