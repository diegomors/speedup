// ignore_for_file: directives_ordering

import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../modules.dart';

class MySummaryPage extends StatelessWidget {
  const MySummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: Color.fromRGBO(255, 255, 255, 1),
      fontFamily: 'IBMPlexSansRegular',
    );

    // TODO trocar instalacao de fontes para dependencia google_fonts

    return Container(
      constraints: const BoxConstraints(maxHeight: 705),
      child: MySummaryBackground(
        child: Center(
          // TODO tornar largura do texto dinamica de acordo com o nome
          child: SizedBox(
            width: 550,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MyText(
                  'Olá! Eu sou o Nome da Pessoa',
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                  textAlign: TextAlign.justify,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                const SizedBox(height: 24.0),
                Text.rich(
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Sou Engenheiro de Software e ',
                      ),
                      TextSpan(
                        text: 'Desenvolvedor Fullstack',
                        style: style.copyWith(
                          color: const Color.fromRGBO(165, 233, 255, 1),
                          fontFamily: 'IBMPlexSansBold',
                        ),
                      ),
                      const TextSpan(
                        text: ' com ',
                      ),
                      TextSpan(
                        text: 'mais de 12 anos de experiência',
                        style: style.copyWith(
                          color: const Color.fromRGBO(165, 233, 255, 1),
                          fontFamily: 'IBMPlexSansBold',
                        ),
                      ),
                      const TextSpan(
                        text:
                            '. Que tal explorar um pouco mais de mim e do meu trabalho? Oi, pode me chamar de Diego! Eu sou ',
                      ),
                      TextSpan(
                        text: 'Desenvolvedor Fullstack',
                        style: style.copyWith(
                          fontWeight: FontWeight.w700,
                          fontFamily: 'IBMPlexSansMedium',
                        ),
                      ),
                      const TextSpan(
                        text:
                            '. Que tal explorar um pouco mais de mim e do meu trabalho?',
                      ),
                    ],
                  ),
                  style: style,
                  textAlign: TextAlign.justify,
                ),
                const MyListButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
