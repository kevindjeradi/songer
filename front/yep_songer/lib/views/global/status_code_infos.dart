import 'package:flutter/material.dart';
import 'package:yep_songer/components/generic/button/return_button.dart';

class StatusCodeInfos extends StatelessWidget {
  StatusCodeInfos({Key? key}) : super(key: key);

  final List<Map<String, String>> infos = [
    {
      "title": "Code 401: Unauthorized",
      "description":
          "Vous n'êtes plus authentifié. Déconnectez-vous, puis reconnectez-vous."
    },
    {
      "title": "Code 403: Forbidden",
      "description":
          "Vous n'avez pas accès à la ressource demandée. Si vous pensez qu'il s'agit d'une erreur, contactez la DSI."
    },
    {
      "title": "Code 404: Not Found",
      "description": "Essayez de fermer et de relancer l'application."
    },
    {
      "title": "Code supérieur ou égal à 500",
      "description":
          "Il s'agit d'une erreur venant du serveur. Veuillez réessayer plus tard."
    },
  ];

  Column infoBox(String title, String description, BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Text(title, style: Theme.of(context).textTheme.headline1)),
      Text(description)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Row(
                            children: [
                              const Padding(
                                  padding: EdgeInsets.only(right: 18),
                                  child: ReturnButton()),
                              Text("A propos des codes de statut",
                                  style: Theme.of(context).textTheme.headline1)
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 24),
                          child: Text(
                              "Voici une liste des codes de statut d'erreur les plus courants et leurs solutions. Si la solution ne fonctionne pas et que le problème persiste, contactez la DSI."),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12)),
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              itemCount: infos.length,
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 36),
                                child: Divider(
                                  thickness: 2,
                                ),
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                final el = infos[index];
                                return infoBox(
                                    el["title"]!, el["description"]!, context);
                              },
                            ),
                          ),
                        )
                      ])))),
    );
  }
}
