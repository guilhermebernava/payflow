import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/appColors.dart';
import 'package:payflow/shared/themes/appImages.dart';
import 'package:payflow/shared/themes/appTextStyles.dart';

class SocialLoginButton extends StatelessWidget {
  //callback custom criada e passada dentro do construtor como REQUIRED
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Serve para conseguir adicionar funcionalidade de CLICAR no BUTTON CUSTOM
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        //decoration serve para adicionar BORDAS e COR DE FUNDO para um CONTAINER
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        child: Row(children: [
          //Ele vai pegar todo o espaço que tiver dentro da tela e ou do seu PAI
          Expanded(
              //serve para dizer qual a FATIA ele vai pegar, quanto maior o FLEX
              //mais espaço ele vai pegar, isso serve para dividir o espaço,
              //para utilizar isso vocÊ precisa colocar FLEX em dois itens diferentes.
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.google),
                  //serve para criar MARGIN entre os WIDGETS
                  const SizedBox(width: 16),
                  Container(
                    height: 56,
                    width: 1,
                    color: AppColors.stroke,
                  )
                ],
              )),
          Expanded(
            //com esse valor ele vai sempre pegar 4 pedaços da tela.
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Entrar com o Google',
                  style: TextStyles.buttonGray,
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
