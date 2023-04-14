import 'package:flutter/material.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class ButtonYesWidget extends StatefulWidget {
  const ButtonYesWidget({Key? key}) : super(key: key);

  @override
  State<ButtonYesWidget> createState() => _ButtonYesWidgetState();
}

class _ButtonYesWidgetState extends State<ButtonYesWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(8)),
        minimumSize: Size(120, 42),
        textStyle: Theme.of(context)
            .textTheme
            .labelLarge,
      ),
      child: const Text('Да 👍'),
      onPressed: () {
        Navigator.of(context).pop();
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(height: 438, decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))
              ),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets
                          .only(
                          left: 12,
                          top: 24),
                      child: Text(
                        "Выберите причину: 👍",
                        textAlign:
                        TextAlign
                            .left,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight:
                          FontWeight
                              .w600,
                          color: Colors
                              .black,
                        ),
                      ),
                    ),
                    CheckboxListTile(
                      //checkbox positioned at right
                      value: true,
                      onChanged:
                          (bool? value) {
                        setState(() {});
                      },
                      title: Text(
                        "😉  Курьер молодец",
                        textAlign:
                        TextAlign
                            .start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    CheckboxListTile(
                      //checkbox positioned at right
                      value: false,
                      onChanged:
                          (bool? value) {
                        setState(() {});
                      },
                      title: Text(
                        "⚡ Быстрая доставка ",
                        textAlign:
                        TextAlign
                            .start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    CheckboxListTile(
                      //checkbox positioned at right
                      value: false,
                      onChanged:
                          (bool? value) {
                        setState(() {});
                      },
                      title: Text(
                        "😋 Вкусная еда ",
                        textAlign:
                        TextAlign
                            .start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    CheckboxListTile(
                      //checkbox positioned at right
                      value: false,
                      onChanged:
                          (bool? value) {
                        setState(() {});
                      },
                      title: Text(
                        "🤝 Оператор был вежлив и дружелюбен",
                        textAlign:
                        TextAlign
                            .start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        decoration:
                        InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(
                                  Radius.circular(
                                      12))),
                          hintText:
                          'Добавить комментарии...',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.pushNamed(
                            context,
                            AppRoutes.current);
                      }, child: Text("Подтвердить")),
                    )
                  ],
                ),
              );
            });
      },

    );
  }
}
