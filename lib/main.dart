import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_flutter/quiz.dart';
import 'package:quiz_flutter/result.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      "texto": "Qual nome da esposa de Luke Skywalker?",
      "respostas": [
        {"texto": "Bianezzis Mathias", "pontuacao": 0},
        {"texto": "Mara Jade", "pontuacao": 1},
        {"texto": "Mia Coutera", "pontuacao": 0},
        {"texto": "Jadire Had", "pontuacao": 0},
      ],
    },
    {
      "texto": "Onde nasceu Sheldon em TBT?",
      "respostas": [
        {"texto": "Pará", "pontuacao": 0},
        {"texto": "Mississipi", "pontuacao": 0},
        {"texto": "Nova Iorque", "pontuacao": 0},
        {"texto": "Texas", "pontuacao": 1},
      ],
    },
    {
      "texto": "Qual nome do mostro em Stranger Things?",
      "respostas": [
        {"texto": "Zordon", "pontuacao": 0},
        {"texto": "Pedagorgon", "pontuacao": 0},
        {"texto": "Demargongon", "pontuacao": 1},
        {"texto": "Psicorgon", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual é a resposta pra vida, o universo e tudo mais?",
      "respostas": [
        {"texto": "3,14", "pontuacao": 0},
        {"texto": "42", "pontuacao": 1},
        {"texto": "Não tem", "pontuacao": 0},
        {"texto": "O amor", "pontuacao": 0},
      ],
    },
    {
      "texto": "O simbolo da resistência é visto em qual saga?",
      "respostas": [
        {"texto": "Star Trek", "pontuacao": 0},
        {"texto": "Star Wars", "pontuacao": 1},
        {"texto": "Perdidos no Espaço", "pontuacao": 0},
        {"texto": "Stargate", "pontuacao": 0},
      ],
    },
    {
      "texto": "Quantos fantasmas existem no jogo Pac Man?",
      "respostas": [
        {"texto": "4", "pontuacao": 1},
        {"texto": "2", "pontuacao": 0},
        {"texto": "1", "pontuacao": 0},
        {"texto": "12", "pontuacao": 0},
      ],
    },
    {
      "texto": "O robô T-800 está presente em qual filme?",
      "respostas": [
        {"texto": "Guia do Mochileiro das Galáxias", "pontuacao": 0},
        {"texto": "Star Wars", "pontuacao": 0},
        {"texto": "Exterminador do Futuro", "pontuacao": 1},
        {"texto": "Blade Runner", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual o nome do Dragão de O Hobbit?",
      "respostas": [
        {"texto": "Smaug", "pontuacao": 1},
        {"texto": "Godzilla", "pontuacao": 0},
        {"texto": "Gollum", "pontuacao": 0},
        {"texto": "Smeagol", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual dessas matérias não é ensinada em Hogwarts?",
      "respostas": [
        {"texto": "Defesa contra artes das trevas", "pontuacao": 0},
        {"texto": "Transfiguração", "pontuacao": 0},
        {"texto": "Línguas das Criaturas Mágicas", "pontuacao": 1},
        {"texto": "História da Magia", "pontuacao": 0},
      ],
    },
    {
      "texto": "Em Game of Thrones qual o Lannister conhecido como Regicida?",
      "respostas": [
        {"texto": "Jamie", "pontuacao": 1},
        {"texto": "Tywin", "pontuacao": 0},
        {"texto": "Cersei", "pontuacao": 0},
        {"texto": "Joffrey", "pontuacao": 0},
      ],
    },
    {
      "texto": "No Universo Marvel, qual dos personagens levantou o Mjönir?",
      "respostas": [
        {"texto": "Viúva Negra", "pontuacao": 0},
        {"texto": "Homem de Ferro", "pontuacao": 1},
        {"texto": "Visão", "pontuacao": 0},
        {"texto": "Thanos", "pontuacao": 0},
      ],
    },
    {
      "texto": "Quais personagens são da DC?",
      "respostas": [
        {"texto": "Lanterna Verde e Capitão Marvel", "pontuacao": 1},
        {"texto": "Flash, Hulk e Fantasma", "pontuacao": 0},
        {"texto": "Batman e Feiticeira Escarlate", "pontuacao": 0},
        {"texto": "Aquaman, Robin e Viúva Negra", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual a característica exclusiva do SS4?",
      "respostas": [
        {"texto": "Cabelos Dourados", "pontuacao": 0},
        {"texto": "Raios em Volta do Corpo", "pontuacao": 0},
        {"texto": "Cauda Vermelha", "pontuacao": 1},
        {"texto": "Ausência de Sonbrancelhas", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual o nome da mãe da Mulher Maravilha?",
      "respostas": [
        {"texto": "Pentesileia", "pontuacao": 0},
        {"texto": "Antíope", "pontuacao": 0},
        {"texto": "Hipólita", "pontuacao": 1},
        {"texto": "Ilíada", "pontuacao": 0},
      ],
    },
    {
      "texto": "Em qual filme Adan Warlock teve sua primeira aparição no UCM?",
      "respostas": [
        {"texto": "Vingadores Era de Ultron", "pontuacao": 0},
        {"texto": "Thor Ragnarok", "pontuacao": 0},
        {"texto": "Guardiões da Galáxia Vol.1", "pontuacao": 0},
        {"texto": "Guardiões da Galáxia Vol.2", "pontuacao": 1},
      ],
    },
    {
      "texto": "Qual a ordem de lançamentos dos filmes Star Wars?",
      "respostas": [
        {"texto": "I, II, III, IV, V, VI, VII E VIII", "pontuacao": 0},
        {"texto": "VIII, VII, IV, V, VI, I, II, E III", "pontuacao": 0},
        {"texto": "IV, V, VI, I II, III, VII, VIII", "pontuacao": 1},
        {"texto": "VII, I, II, III, IV, V, VI, E VII", "pontuacao": 0},
      ],
    },
    {
      "texto":
          "No Guia do Mochileiro das Galáxias o que não pode faltar para um mochileiro?",
      "respostas": [
        {"texto": "Cobertor", "pontuacao": 0},
        {"texto": "Mochila", "pontuacao": 0},
        {"texto": "Almofada", "pontuacao": 0},
        {"texto": "Toalha", "pontuacao": 1},
      ],
    },
    {
      "texto": "Em qual filme Thanos apareceu pela primeira vez?",
      "respostas": [
        {"texto": "Homem de Ferro", "pontuacao": 0},
        {"texto": "Vingadores", "pontuacao": 1},
        {"texto": "Guardiões da Galáxia Vol.1", "pontuacao": 0},
        {"texto": "Thor 2", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual o super herói preferido de Stan Lee?",
      "respostas": [
        {"texto": "Homem Aranha", "pontuacao": 1},
        {"texto": "Home de Ferro", "pontuacao": 0},
        {"texto": "Capitão América", "pontuacao": 0},
        {"texto": "Thor", "pontuacao": 0},
      ],
    },
    {
      "texto": "Quem é o ser supremo da Marvel?",
      "respostas": [
        {"texto": "One Above All", "pontuacao": 1},
        {"texto": "Tribunal Vivo", "pontuacao": 0},
        {"texto": "O Vigia", "pontuacao": 0},
        {"texto": "Fulcrum", "pontuacao": 0},
      ],
    },
    {
      "texto": "Onde Arlequina teve sua primeira aparição?",
      "respostas": [
        {"texto": "Os Novos 52", "pontuacao": 0},
        {"texto": "Joker's Favor (1992)", "pontuacao": 0},
        {"texto": "Mad Love (1994)", "pontuacao": 0},
        {"texto": "Em uma série animada", "pontuacao": 1},
      ],
    },
    {
      "texto": "Quem foi a primeira namorada de Peter Parker?",
      "respostas": [
        {"texto": "Marri Jane", "pontuacao": 0},
        {"texto": "Liz Allen", "pontuacao": 1},
        {"texto": "Gwen Stacy", "pontuacao": 0},
        {"texto": "Lisa Danielle", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual HQ conta a história de origem do Batman?",
      "respostas": [
        {"texto": "Um Conto de Batman: Coma", "pontuacao": 0},
        {"texto": "A Piada Mortal", "pontuacao": 0},
        {"texto": "Ano Um", "pontuacao": 1},
        {"texto": "Cavaleiro das Trevas Parte 1", "pontuacao": 0},
      ],
    },
    {
      "texto": "Em que ano a Disney comprou a Marvel?",
      "respostas": [
        {"texto": "2010", "pontuacao": 0},
        {"texto": "2015", "pontuacao": 0},
        {"texto": "2009", "pontuacao": 1},
        {"texto": "2017", "pontuacao": 0},
      ],
    },
    {
      "texto": "Quais foram os criadores do Capitão América?",
      "respostas": [
        {"texto": "Jack Kirby e Stan Lee", "pontuacao": 0},
        {"texto": "Stan Lee e Alan Moore", "pontuacao": 0},
        {"texto": "Joe Simon e Alan Moore", "pontuacao": 0},
        {"texto": "Jack Kirby e Joe Simon", "pontuacao": 1},
      ],
    },
    {
      "texto": "Qual é o nome da mãe de Tony Stark?",
      "respostas": [
        {"texto": "Maria Stark", "pontuacao": 1},
        {"texto": "Bárbara Stark", "pontuacao": 0},
        {"texto": "Liz Stark", "pontuacao": 0},
        {"texto": "Sara Stark", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual o planeta natal de Spock de Star Trek?",
      "respostas": [
        {"texto": "Vulcano", "pontuacao": 1},
        {"texto": "Terra", "pontuacao": 0},
        {"texto": "Asgard", "pontuacao": 0},
        {"texto": "Nave Enterprise", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual a cor da Meta-anfetamina de Heisenberg em Breaking Bad?",
      "respostas": [
        {"texto": "Branca", "pontuacao": 0},
        {"texto": "Amarelo", "pontuacao": 0},
        {"texto": "Azul cobalto", "pontuacao": 0},
        {"texto": "Azul", "pontuacao": 1},
      ],
    },
    {
      "texto":
          "Qual a palavra que Sheldon Cooper utiliza para definir uma mentira feita pro si próprio?",
      "respostas": [
        {"texto": "Jibber-Jabber!", "pontuacao": 0},
        {"texto": "Zazzle!", "pontuacao": 0},
        {"texto": "Bazinga!", "pontuacao": 1},
        {"texto": "Abracadabra!", "pontuacao": 0},
      ],
    },
    {
      "texto": "Qual desses não é orfão?",
      "respostas": [
        {"texto": "Super-man", "pontuacao": 0},
        {"texto": "Arqueiro Verde", "pontuacao": 0},
        {"texto": "Homem-Aranha", "pontuacao": 0},
        {"texto": "Cable", "pontuacao": 1},
      ],
    },
  ];

  bool get temPerguntaSelecionada {
    print(_perguntas.length);
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          backgroundColor: Colors.red[700],
          title: Center(
            child: Text(
              "Quiz",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                responder: _responder,
                perguntaSelecionada: _perguntaSelecionada,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
