import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  
  final int resultScore;
  final Function restartQuiz;

  Result(this.resultScore,this.restartQuiz);

  String get resultPhrase {
  String resultText = '';
    
    if(resultScore > 60)
    {
      resultText=  'Others see you as someone they should “handle with care.' 
                   'You\'re seen as vain, self-centered and one who is extremely domineering.' 
                   'Others may admire you, wishing they could be more like you,'
                   'but don’t always trust you,hesitating to become too deeply involved with you.';
    }
    
    else if(resultScore < 60 && resultScore > 51)
    {
      resultText = 'Others see you as an exciting, highly volatile, rather impulsive personality;'
                     'a natural leader, one who’s quick to make decisions, though not always the right ones.' 
                     'They see you as bold and adventuresome, someone who will try anything once;'
                     'someone who takes chances and enjoys an adventure.'
                     'They enjoy being in your company because of the excitement you radiate.';
    }

    else if(resultScore < 50 && resultScore > 41)
    {
      resultText =  'Others see you as fresh, lively, charming, amusing, practical and always interesting;'
                     'someone who’s constantly in the center of attention,' 
                     'but sufficiently well-balanced not to let it go to their head.' 
                     'They also see you as kind, considerate, and understanding;'
                     'someone who’ll always cheer them up and help them out.';      
    }
    
    else if(resultScore < 40 && resultScore > 31)
    {
      resultText =  'Others see you as sensible, cautious, careful and practical.' 
                    'They see you as clever, gifted, or talented, but modest.' 
                    'Not a person who makes friends too quickly or easily, but someone who’s extremely loyal to ' 
                    'friends you do make and who expect the same loyalty in return.'
                    'Those who really get to know you realize it takes a lot to shake your trust in your friends,' 
                    'but equally that it takes you a long time to get over it if that trust is ever broken.';
    }
    
    else if(resultScore < 30 && resultScore > 21)
    {
      resultText ='Your friends see you as painstaking and fussy. They see you as very cautious, extremely careful, a slow and steady plodder.' 
                     'It would really surprise them if you ever did something impulsively or on the spur of the moment,' 
                     'expecting you to examine everything carefully from every angle and then usually decide against it.' 
                    'They think this reaction is caused partly by your careful nature.';
    }

    else
    {
      resultText =   'People think you are shy, nervous, and indecisive, someone who needs looking after,'
                     'who always wants someone else to make the decisions and who doesn’t want to get involved with anyone or anything!'
                     'They see you as a worrier who always sees problems that don’t exist. Some people think you’re boring.'
                     'Only those who know you well know that you aren’t.';
    }
    return resultText;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
                      child: Center(
                                     child: Column(
                                       children: <Widget>[
                                         Text(resultPhrase,
                                                      style: TextStyle( fontSize :22,color: Colors.purple),
                                                      textAlign: TextAlign.justify,),
                                          FlatButton(child :Text('Restart Quiz!'), onPressed: restartQuiz,)
                                       ],
                                     ),
                                    ),
                      margin: EdgeInsets.all(20),
                      );
                                      }//End of build Context
}