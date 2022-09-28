import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final paddingContent = const EdgeInsets.symmetric(horizontal: 20);
  final paddingTop = const EdgeInsets.only(top: 20);
  @override
  void initState() {
    // TODO: implement initState
    FlutterStatusbarcolor.setStatusBarColor(
      const Color.fromRGBO(130, 10, 209, 1),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color.fromRGBO(130, 10, 209, 1),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color.fromRGBO(155, 3, 253, 100),
                              radius: 28,
                              child: Icon(
                                Icons.person_outline_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: (() {}),
                                  icon: const Icon(MdiIcons.eyeOutline,
                                      color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: (() {}),
                                  icon: const Icon(MdiIcons.helpCircleOutline,
                                      color: Colors.white),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.person_add_alt,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: paddingTop,
                          child: const Text(
                            "Olá, Talita",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: paddingContent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: paddingTop,
                        child: InkWell(
                          splashColor: Colors.white,
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          highlightColor: Colors.white,
                          autofocus: false,
                          onTap: (() {}),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Conta",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Icon(Icons.arrow_forward_ios_rounded,
                                      size: 16, color: Colors.black54),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "R\$0,00",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _listButtom(),
                      Padding(
                        padding: paddingTop,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(240, 241, 245, 100),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: const [
                                Icon(
                                  MdiIcons.creditCardChipOutline,
                                  size: 22,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    "Meus cartões",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      _listContainers(),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: paddingContent,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: paddingTop,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Cartão de crédito",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 16, color: Colors.black45),
                            ],
                          ),
                        ),
                        Padding(
                          padding: paddingTop,
                          child: const Text(
                            'Fatura atual',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black38,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            'R\$0.000,00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        const Text(
                          'Limite disponível de R\$0.000,00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare_arrows_outlined,
              color: Color.fromRGBO(130, 10, 209, 1),
              size: 28,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              color: Colors.black45,
              size: 28,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black45,
              size: 28,
            ),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget _textContainers(int index) {
    return index == 0
        ? RichText(
            text: const TextSpan(
                style: TextStyle(fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                      text: "Você na Copa do Mundo da \nFIFA. ",
                      style: TextStyle(color: Color.fromRGBO(130, 10, 209, 1))),
                  TextSpan(
                      text: "Acredita & Vai.",
                      style: TextStyle(color: Colors.black))
                ]),
          )
        : index == 1
            ? RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Você tem até ",
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: "R\$0.000,00\n",
                        style: TextStyle(
                          color: Color.fromRGBO(130, 10, 209, 1),
                        ),
                      ),
                      TextSpan(
                          text: "disponíveis para empréstimo.",
                          style: TextStyle(color: Colors.black)),
                    ]),
              )
            : index == 2
                ? RichText(
                    text: const TextSpan(
                        style: TextStyle(fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Indique o Nubank ",
                            style: TextStyle(
                              color: Color.fromRGBO(130, 10, 209, 1),
                            ),
                          ),
                          TextSpan(
                              text: "para sua \n família e amigos.",
                              style: TextStyle(color: Colors.black)),
                        ]),
                  )
                : const Text("Texto não encontrado");
  }

  Widget _listContainers() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: SizedBox(
        width: double.infinity,
        height: 90,
        child: ListView.separated(
            separatorBuilder: (sepContext, sepIndex) =>
                const Padding(padding: EdgeInsets.only(right: 8)),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(240, 241, 245, 100),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: _textContainers(index)),
              );
            }),
      ),
    );
  }

  Widget _listButtom() {
    return Padding(
      padding: paddingTop,
      child: Expanded(
        child: SizedBox(
          width: double.infinity,
          height: 120,
          child: ListView.separated(
              separatorBuilder: (sepContext, sepIndex) =>
                  const Padding(padding: EdgeInsets.only(right: 8)),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 240, 241, 245),
                              //color: Colors.grey,
                              shape: BoxShape.circle),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _iconButton(index),
                          ),
                        ),
                      ),
                      _textButton(index)
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }

  Widget _iconButton(index) {
    return IconButton(
      onPressed: (() {}),
      icon: Icon(
        index == 0
            ? Icons.api_rounded
            : index == 1
                ? MdiIcons.barcode
                : index == 2
                    ? Icons.handshake_rounded
                    : index == 3
                        ? Icons.arrow_upward_rounded
                        : index == 4
                            ? Icons.arrow_circle_down_rounded
                            : index == 5
                                ? Icons.phone_iphone_rounded
                                : index == 6
                                    ? Icons.monetization_on
                                    : index == 7
                                        ? Icons.favorite_border
                                        : index == 8
                                            ? Icons.arrow_circle_up_outlined
                                            : index == 9
                                                ? Icons.add_chart_rounded
                                                : Icons.error,
        //size: 30,
      ),
    );
  }

  Widget _textButton(int index) {
    return Expanded(
      child: Text(
        index == 0
            ? "Área Pix"
            : index == 1
                ? "Pagar"
                : index == 2
                    ? "Pegar\n emprestado"
                    : index == 3
                        ? "Transferir"
                        : index == 4
                            ? "Depositar"
                            : index == 5
                                ? " Recarga de\n celular"
                                : index == 6
                                    ? "Cobrar"
                                    : index == 7
                                        ? "Doação"
                                        : index == 8
                                            ? "Transferir\nInternac."
                                            : index == 9
                                                ? "Investir"
                                                : "",
        style: const TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
