import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
import '../modules.dart';

class MySummaryPage extends StatelessWidget {
  const MySummaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 1091),
      child: MySummaryBackground(
        child: Padding(
          padding: const EdgeInsets.only(top: 96.0, bottom: 240.37),
          child: Container(
            width: 1439,
            height: 638.63,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 460,
                  height: 52,
                  child: MyText(
                    'Olá! Eu sou o Ivaldo CS',
                    fontWeight: FontWeight.w500,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  width: 460,
                  height: 115,
                  child: MyText(
                    'Sou Engenheiro de Software e Desenvolvedor Fullstack com mais de 12 anos de experiência. Que tal explorar um pouco mais de mim e do meu trabalho? Oi, pode me chamar de Diego! Eu sou Desenvolvedor Fullstack. Que tal explorar um pouco mais de mim e do meu trabalho?',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
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
