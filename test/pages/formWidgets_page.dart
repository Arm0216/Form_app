import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_app/main.dart';
export '../../integration_test/signInWithHttp_test.dart';

class FormWidgets{
  final estimatedValue = find.byType(Slider);
  final editDate = find.text('Edit');
  final moneySlider = find.text("\$414");
  final dayNine = find.text("9");
  final dayMonthYear = find.text("4/9/2021");
  final okButtonFromDateWidget = find.text("OK");
  final switchEnableFeature = find.byType(Switch);
  final activeSwitchEnableFeature = find.byWidgetPredicate((widget) => widget is Switch && widget.value == true);

  Future<void> dropSliderEstimatedValue(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.drag(estimatedValue, Offset(100, 0));
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> clickOnSwitchFromEnableFeature(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(switchEnableFeature);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> clickOnEditDateButton(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(editDate);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }

  Future<void> selectDayAndClickOnOkButton(tester) async{
    await tester.pumpWidget(FormApp());
    await tester.tap(dayNine);
    await tester.tap(okButtonFromDateWidget);
    await tester.pumpAndSettle(Duration(seconds: 1));
  }
}