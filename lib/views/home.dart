import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final paddingContent = const EdgeInsets.symmetric(horizontal: 20);
  final paddingTop = const EdgeInsets.only(top: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromRGBO(130, 10, 209, 1),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 40),
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
                              icon: const Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.white),
                            ),
                            IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.question_mark_rounded,
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
                      onTap: (() {}),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Conta",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 16, color: Colors.black54),
                            ],
                          ),
                          const Text(
                            "R\$0,00",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _listButtom(),
                  Padding(
                    padding: paddingTop,
                    child: InkWell(
                      onTap: () {},
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
                                Icons.credit_card_rounded,
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
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Divider(),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.compare_arrows_outlined,
                  color: Color.fromRGBO(155, 157, 161, 100))),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_money,
                color: Color.fromRGBO(155, 157, 161, 100),
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined,
                  color: Color.fromRGBO(155, 157, 161, 100))),
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
                //ListView

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
                            padding: const EdgeInsets.all(16.0),
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
                ? Icons.payments_rounded
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
        size: 32,
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
