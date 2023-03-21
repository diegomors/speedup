import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../modules.dart';

class MySummaryPage extends StatelessWidget {
  const MySummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 705),
      child: MySummaryBackground(
        child: Center(
          // TODO tornar largura do texto dinamica
          child: SizedBox(
            width: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                MyText(
                  'Olá! Eu sou o Nome da Pessoa',
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 24.0),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: MyText(
                          'Sou Engenheiro de Software e ',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      WidgetSpan(
                        child: MyText(
                          'Desenvolvedor Fullstack',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          textAlign: TextAlign.justify,
                          color: Color.fromRGBO(165, 233, 255, 1),
                        ),
                      ),
                      WidgetSpan(
                        child: MyText(
                          ' com mais de 12 anos de experiência. Que tal explorar um pouco mais de mim e do meu trabalho? Oi, pode me chamar de Diego! Eu sou Desenvolvedor Fullstack. Que tal explorar um pouco mais de mim e do meu trabalho?',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
