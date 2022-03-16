import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/appColors.dart';
import 'package:payflow/shared/themes/appImages.dart';
import 'package:payflow/shared/widgets/socialLoginButton.dart';

import '../../shared/themes/appTextStyles.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //pega o tamanho da tela com base no APP sendo usado
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      // SERVE para conseguir modificar tamanho da tela
      body: SizedBox(
        //configurando tamanho da tela para o tamaho do celular
        width: size.width,
        height: size.height,
        //STACK COLOCA COISAS UMA POR CIMA DA OUTRA
        child: Stack(
          children: [
            //Utilizado para criar um fundo de outra cor
            //os containers são utilizados para criar blocos de cores e ou
            //organizar coisas, nesse caso estou criando um bloco de cor laranja
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            //Serve para pegar um WIDGET e posicionar ele dentro da tela do app
            // ele aceita varios FILHOS tb, porém ele se posiciona ne TELA
            // não entre os filhos, ele não possui espacamento pros CHILDREN
            Positioned(
                //posicionamento na tela em todas direções
                top: 40,
                right: 0,
                left: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
                bottom: size.height * 0.05,
                right: 0,
                left: 0,
                //column serve para colocar os dados um abaixo do outro
                //por padrão NÃO EXISTE PADDING ENTRE OS CHILDRENS
                child: Column(
                  // esses dois serve para alinhar no eixo X e Y os childrens
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.logomini),
                    //PADDING é o espaçamento entre um CHILD e OUTRO, lembrando
                    //que o PADDING só é aplica em um UNICO CHILD ou seja, se voce
                    //colocar PADDING em um TEXT somente ele vai ter esse PADDING
                    Padding(
                      //definindo as configurações do padding
                      padding:
                          const EdgeInsets.only(top: 30, right: 70, left: 70),
                      child: Text(
                        'Orgazine seus boletos em um lugar só',
                        textAlign: TextAlign.center,
                        //Passando Styles que eu mesmo criei
                        style: TextStyles.titleHome,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, right: 40, top: 40),
                      //Button feito por mim mesmo
                      child: SocialLoginButton(
                        onTap: () {
                          print('clicou');
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
