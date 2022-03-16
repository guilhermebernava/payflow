import 'package:flutter/material.dart';
import 'package:payflow/modules/home/homeController.dart';
import 'package:payflow/shared/themes/appColors.dart';
import 'package:payflow/shared/themes/appTextStyles.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //controller feito para poder mudar INDEX de paginas
  final controller = HomeController();

  //paginas FAKE so para mostrar a mudança em tela.
  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(color: Colors.blue),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //uso PreferredSize para poder passar um CHILD para o APPBAR
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: Container(
            //defino o tamanho da APPBAR
            height: 150,
            //COR DA APP BAR
            color: AppColors.primary,
            //CENTRALIZO os textos
            child: Center(
                //Crio uma lista de varios textos
                child: ListTile(
              //TITULO, usa TEXTSPAN para passar outros textos para ele
              title: Text.rich(TextSpan(
                  text: "Olá, ",
                  style: TextStyles.titleRegular,
                  //TEXTOS QUE VEM DEPOIS DO TITULO
                  children: [
                    TextSpan(text: "Guilherme", style: TextStyles.captionShape)
                  ])),
              //SUBTITULO, QUE VEM NA LINHA DE BAIXO
              subtitle: Text(
                "Mantenha suas contas em dia",
                style: TextStyles.buttonBackground,
              ),
              //Serve para colocar uma IMAGEM/ICONE depois do TITULO
              trailing: Container(
                width: 52,
                height: 52,
                //Definindo um quadrado para fazer o lugar onde a imagem irá ficar
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(9)),
              ),
            )),
          )),
      //Definindo uma barra inferior de navegação
      // utiliza o SizedBox para criar uma "DIV"para colocar
      // todos os filhos dentro dela
      body: pages[controller.currentPage],
      bottomNavigationBar: SizedBox(
        //define o tamanho da barra inferior
        height: 90,
        //DEFINE COMO ROW PARA PODER COLOCAR UM DO LADO DO OUTRO
        child: Row(
          //COLOCA UM ESPAÇAMENTO SPACE_BETWEEN
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //cria um Botao com icone
            IconButton(
                //quando for pressionado irá mudar a pagina por meio de um ARRAY
                // de paginas
                onPressed: () {
                  setState(() {
                    controller.setPage(0);
                  });
                },
                //definindo a imagem desse button
                icon: Icon(
                  Icons.home,
                  color: AppColors.primary,
                )),
            //
            GestureDetector(
              onTap: () {
                print("Clicou");
              },
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.add_box_outlined,
                  color: AppColors.background,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    controller.setPage(1);
                  });
                },
                icon: Icon(
                  Icons.description_outlined,
                  color: AppColors.body,
                ))
          ],
        ),
      ),
    );
  }
}
