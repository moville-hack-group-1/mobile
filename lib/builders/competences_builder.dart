import 'package:educanacao/models/trail.dart';
import 'package:flutter/material.dart';

class CompetencesBuilder {
  static getCompetences() {
    List<Competence> competences = List();

    Competence competenceOne = Competence(
        'História e Geografia', null, Colors.green,
        titleColor: Colors.grey[500]);

    Content contentOne = Content(
        'Energia elétrica.',
        'Aparelhos elétricos podem ser de muitos tipos, exercendo funções diferentes, por exemplo: calor, limpeza, roupa lavada, notícias, música, refrigeração etc. Podemos reescrever essas coisas de uma outra forma, procurando o que há em comum, nas funções desses aparelhos. Por exemplo, uma batedeira, um ventilador e uma furadeira todos eles, apesar de estarem executando tarefas diferentes, produzem algum movimento. Nesses trás exemplos, todos possuem motores elétricos. Esse tipo de motor transforma a energia elétrica em movimento, que a uma outra forma de energia, que chamamos de energia mecânica. Assim, em todos esses aparelhos, a energia elétrica está se transformando em alguma outra forma de energia.',
        'images/topic/step-1.jpg',
        'Lorem Ipsum',
        '/audio/step-1/step-1.mp3',
        '/pdf/step-1/step-1.pdf');
    Content contentTwo = Content(
        'ConservaçÃo de alimentos.',
        'Ao ter que programar formas de economizar energia, muita gente tem dificuldades. O que excluir? DÃ¡ para ficar sem lÂmpadas? Sem TV? Ou sem geladeira, por exemplo? A geladeira é um bom exemplo de eletrodoméstico sem o qual é difÃ­cil imaginar o mundo hoje em dia.\n Prolongar a vida de um alimento nÃo é uma novidade. Os antigos caçadores, muitos séculos atrÁs, que salgavam e defumavam a carne de sua presa, jÁ estavam fazendo isso: perceberam que a carne, coberta de sal por algum tempo, tornava-se seca (desidratada), durando muito mais, o que também ocorria quando era exposta Ã&nbsp; fumaça e ao calor (defumada).',
        'images/topic/step-2.jpg',
        'Lorem Ipsum',
        '/audio/step-2/step-2.mp3',
        '/pdf/step-2/step-2.pdf');
    Content contentThree = Content(
        'Meios de transporte.',
        'A escolha de meios de transporte envolve, muitos fatores. Em cada situaçÃo, para cada objetivo, em cada regiÃo do paÃ­s e do mundo, é necessÁrio balancear as vantagens e devantagens de se fabricar, introduzir e utilizar um dado meio de transporte, analisando os muitos aspectos envolvidos: sociais, econÃ´micos, ambientais. Podemos nos perguntar, por exemplo, de que adiantam veÃ­culos capazes de desenvolver velocidades tÃo elevadas nas estradas e nas cidades, se o crescimento populacional, o crescimento urbano e a frota de veÃ­culos aumenta também tÃo rapidamente, causando congestionamentos â€œmonstrosâ€ e muitos acidentes, e lançando no ar que respiramos tantas substÂncias nocivas.',
        'images/topic/step-3.png',
        'Lorem Ipsum',
        '/audio/step-3/step-3.mp3',
        '/pdf/step-3/step-3.pdf');
    Content contentFour = Content(
        'GeraçÃo de energia',
        'No Brasil, a usina hidrelétrica é a forma de geraçÃo mais comum de eletricidade graças ao grande nÚmero de rios que possui. Mas também possui usinas termoelétricas e nucleares, além de outras fontes geradoras, mas em quantidades bem menores. \n Na hidrelétrica o movimento da Água é transformado em energia elétrica, apesar de nÃo produzirem gases poluentes nem radiações e de usarem uma fonte renovÁvel de energia â€“ a Água â€“, também nÃo estÃo isentas de problemas. As grandes hidrelétricas necessitam alagar vastas Áreas para seus reservatÃ³rios, tendo que deslocar populaÇões e plantaÇões dessas Áreas.',
        'images/topic/step-4.jpg',
        'Lorem Ipsum',
        '/audio/step-4/step-4.mp3',
        '/pdf/step-4/step-4.pdf');

    List<Content> contentList = List();
    contentList.add(contentOne);
    contentList.add(contentTwo);
    contentList.add(contentThree);
    contentList.add(contentFour);

    Topic topic = Topic(
        'Compreender conhecimentos científicos e tecnológicos a serviço da humanidade, identificando riscos e benefícios neles envolvidos.',
        contentList,
        Colors.red);
    List<Topic> topics = List();
    topics.add(topic);

    Competence competenceTwo = Competence('Ciências', topics, Colors.red);
    Competence competenceThree = Competence(
        'Língua portuguesa',
        null,
        Colors.blue,
        titleColor: Colors.grey[500]);
    Competence competenceFour = Competence('Competência 4', null, Colors.yellow,
        titleColor: Colors.grey[500]);
    Competence competenceFive = Competence('Competência 5', null, Colors.orange,
        titleColor: Colors.grey[500]);

    competences.add(competenceOne);
    competences.add(competenceTwo);
    competences.add(competenceThree);
    competences.add(competenceFour);
    competences.add(competenceFive);
    return competences;
  }
}
