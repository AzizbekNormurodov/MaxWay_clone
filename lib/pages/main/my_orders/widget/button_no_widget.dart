import 'package:flutter/material.dart';
import 'package:maxway_clone/routes/app_routes.dart';

class ButtonNoWidget extends StatefulWidget {
  const ButtonNoWidget({Key? key}) : super(key: key);

  @override
  State<ButtonNoWidget> createState() => _ButtonNoWidgetState();
}

class _ButtonNoWidgetState extends State<ButtonNoWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xffEBEDF0),
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(8)),
        minimumSize: Size(120, 42),
        textStyle: Theme.of(context)
            .textTheme
            .labelLarge,
      ),
      child: const Text(
        'Нет 👎',
        style: TextStyle(
          color: Color(0xff818C99),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
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
                        "Выберите причину: 👎",
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
                        "🥶 Остывшая еда",
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
                        "🐌️ Долгая доставка ",
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
                        "🙁 Проблемы с курьером ",
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
                        "🙁 Проблемы с оператором",
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
                        Navigator.pushNamed(context, AppRoutes.history);
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
