import 'package:flutter/material.dart';
import 'package:magic_bakery/survey/question.dart';

class SurveyPage2 extends StatefulWidget {
  static const String routeName = "survey_page2";

  SurveyPage2({
    super.key,
  });

  @override
  State<SurveyPage2> createState() => _SurveyPage2State();
}

class _SurveyPage2State extends State<SurveyPage2> {
  @override
  Widget build(BuildContext context) {
    bool isThirst = false;
    bool isNoThirst = false;
    bool isShortBreath = false;
    bool isNoShortBreath = false;
    bool isDifficultyBreathing = false;
    bool isNoDifficultyBreathing = false;
    bool isSkinRash = false;
    bool isNoSkinRash = false;
    bool isColic = false;
    bool isNoColic = false;
    bool isUnnaturalSmell = false;
    bool isNoUnnaturalSmell = false;
    bool isIrritableBowelSyndrome = false;
    bool isNoIrritableBowelSyndrome = false;
    bool isIndigestion = false;
    bool isNoIndigestion = false;
    bool isEsophagitis = false;
    bool isNoEsophagitis = false;

    void choseIllness(){
      if(isThirst == true
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == false
          && isEsophagitis == false){
        print("مرض السكر");
      }else if (isThirst == false
          && isShortBreath == true
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == false && isEsophagitis == false) {
        print("مرض القلب");
      }else if (isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == true
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == false && isEsophagitis == false) {
        print("مرض الضغط");
      }else if (isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == true
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == false && isEsophagitis == false) {
        print("مرض حساسة الجلوتين");
      }else if (isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == true
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == false && isEsophagitis == false) {
        print("حساسية اللاكتوز");
      }else if (isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == true
          && isIrritableBowelSyndrome == false
          && isIndigestion == false && isEsophagitis == false) {
        print("مرض تمثبل غذائى");
      }else if (isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == true
          && isIndigestion == false && isEsophagitis == false) {
        print("مرض قولون عصبى");
      }else if (isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == true && isEsophagitis == false) {
        print("مرض عسر الهضم");
      }else if (isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == false && isEsophagitis == true) {
        print("مرض التهاب المريء");
      }else if(isThirst == false
          && isShortBreath == false
          && isDifficultyBreathing == false
          && isSkinRash == false
          && isColic == false
          && isUnnaturalSmell == false
          && isIrritableBowelSyndrome == false
          && isIndigestion == false
          && isEsophagitis == false){
        print("غير معرف على المرض ");
      }else if(isThirst == true
          && isShortBreath == true
          && isDifficultyBreathing == true
          && isSkinRash == true
          && isColic == true
          && isUnnaturalSmell == true
          && isIrritableBowelSyndrome == true
          && isIndigestion == true
          && isEsophagitis == true){
        print("غير معرف على المرض ");
      }else {
        print("غير معرف على المرض ");
      }
    }

    bool isSurveyValid() {
      // أضف منطق التحقق الخاص بك هنا
      if ((isThirst || isNoThirst) &&
          (isShortBreath || isNoShortBreath) &&
          (isDifficultyBreathing || isNoDifficultyBreathing) &&
          (isSkinRash || isNoSkinRash) &&
          (isColic || isNoColic) &&
          (isUnnaturalSmell || isNoUnnaturalSmell) &&
          (isIrritableBowelSyndrome || isNoIrritableBowelSyndrome) &&
          (isIndigestion || isNoIndigestion) &&
          (isEsophagitis || isNoEsophagitis)) {
        return true; // الاستبيان يعتبر صحيحاً
      } else {
        return false; // الاستبيان غير صحيح
      }
    }


    void SelectIllness() {
      if (isSurveyValid()) {
        choseIllness();
      } else {
        print("Please answer all survey questions."); // Or display an error message
      }
    }



    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "صحتك تهمنا",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff65451F),
                  ),
                ),
                const Divider(
                  thickness: 5,
                  color: Color(0xffFFF5E5),
                  height: 10,
                ),
                const SizedBox(
                  height: 25,
                ),
                Questions(
                  questionsText: "هل تشعر بالعطش اكثر من اللازم؟",
                  checkQuestionTrue: isThirst,
                  checkQuestionFalse: isNoThirst,
                  onTrueTap: () {
                    isNoThirst = false;
                    isThirst = true;
                  },
                  onFalseTap: () {
                    isNoThirst = true;
                    isThirst = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //سكر
                Questions(
                  questionsText: "هل تفقدان الوزن من دون قصد؟",
                  checkQuestionTrue: isThirst,
                  checkQuestionFalse: isNoThirst,
                  onTrueTap: () {
                    isNoThirst = false;
                    isThirst = true;
                  },
                  onFalseTap: () {
                    isNoThirst = true;
                    isThirst = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                // مرض القلب
                Questions(
                  questionsText: "هل تشعر بضيق النفس وضيق الصدر ؟",
                  checkQuestionTrue: isShortBreath,
                  checkQuestionFalse: isNoShortBreath,
                  onTrueTap: () {
                    isNoShortBreath = false;
                    isShortBreath = true;
                  },
                  onFalseTap: () {
                    isNoShortBreath = true;
                    isShortBreath = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //مرض القلب
                Questions(
                  questionsText: "ألم في العنق أو الفك أو الحلق أو الجزء العلوي من البطن أو الظهر؟",
                  checkQuestionTrue: isShortBreath,
                  checkQuestionFalse: isNoShortBreath,
                  onTrueTap: () {
                    isNoShortBreath = false;
                    isShortBreath = true;
                  },
                  onFalseTap: () {
                    isNoShortBreath = true;
                    isShortBreath = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //القلب
                Questions(
                  questionsText: "ألم أو خدر أو ضعف أو برودة في الساقين أو الذراعين إذا أصيبت الأوعية الدموية في أجزاء الجسم هذه بالتضيّق ؟",
                  checkQuestionTrue: isShortBreath,
                  checkQuestionFalse: isNoShortBreath,
                  onTrueTap: () {
                    isNoShortBreath = false;
                    isShortBreath = true;
                  },
                  onFalseTap: () {
                    isNoShortBreath = true;
                    isShortBreath = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                // مرض الضغط
                Questions(
                  questionsText: "هل تشعر صعوبة فى التنفس مع دوخان؟",
                  checkQuestionTrue: isDifficultyBreathing,
                  checkQuestionFalse: isNoDifficultyBreathing,
                  onTrueTap: () {
                    isNoDifficultyBreathing = false;
                    isDifficultyBreathing = true;
                  },
                  onFalseTap: () {
                    isNoDifficultyBreathing = true;
                    isDifficultyBreathing = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //الضغط
                Questions(
                  questionsText: "هل تشعر بألم فى الصدر و الصداع الوخيم؟",
                  checkQuestionTrue: isDifficultyBreathing,
                  checkQuestionFalse: isNoDifficultyBreathing,
                  onTrueTap: () {
                    isNoDifficultyBreathing = false;
                    isDifficultyBreathing = true;
                  },
                  onFalseTap: () {
                    isNoDifficultyBreathing = true;
                    isDifficultyBreathing = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                // مرض حساسة الجلوتين
                Questions(
                  questionsText: "هل لديك طفح جلدى وتشعر بالصداع؟",
                  checkQuestionTrue: isSkinRash,
                  checkQuestionFalse: isNoSkinRash,
                  onTrueTap: () {
                    isNoSkinRash = false;
                    isSkinRash = true;
                  },
                  onFalseTap: () {
                    isNoSkinRash = true;
                    isSkinRash = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //حساسية جلوتين
                Questions(
                  questionsText: "هل لديك آلام فى البطن، أو انتفاخ؟",
                  checkQuestionTrue: isSkinRash,
                  checkQuestionFalse: isNoSkinRash,
                  onTrueTap: () {
                    isNoSkinRash = false;
                    isSkinRash = true;
                  },
                  onFalseTap: () {
                    isNoSkinRash = true;
                    isSkinRash = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //حساسية اللاكتوز
                Questions(
                  questionsText: "هل تشعر بالمغص و الم المعدة و وعسر الهضم؟",
                  checkQuestionTrue: isColic,
                  checkQuestionFalse: isNoColic,
                  onTrueTap: () {
                    isNoColic = false;
                    isColic = true;
                  },
                  onFalseTap: () {
                    isNoColic = true;
                    isColic = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //حساسية اللاكتوز
                Questions(
                  questionsText: "هل تشعر يالنفخة والغازات و الغثيان والتقيؤ؟",
                  checkQuestionTrue: isColic,
                  checkQuestionFalse: isNoColic,
                  onTrueTap: () {
                    isNoColic = false;
                    isColic = true;
                  },
                  onFalseTap: () {
                    isNoColic = true;
                    isColic = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //مرض تمثبل غذائى
                Questions(
                  questionsText: "هل لديك رائحة غير طبيعية للتنفس والعرق؟",
                  checkQuestionTrue: isUnnaturalSmell,
                  checkQuestionFalse: isNoUnnaturalSmell,
                  onTrueTap: () {
                    isNoUnnaturalSmell = false;
                    isUnnaturalSmell = true;
                  },
                  onFalseTap: () {
                    isNoUnnaturalSmell = true;
                    isUnnaturalSmell = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //تمثيل غذائى
                Questions(
                  questionsText: "هل لديك تأخر فى النمو،اوتشعر بالخمول،و ضعف الشهية؟",
                  checkQuestionTrue: isUnnaturalSmell,
                  checkQuestionFalse: isNoUnnaturalSmell,
                  onTrueTap: () {
                    isNoUnnaturalSmell = false;
                    isUnnaturalSmell = true;
                  },
                  onFalseTap: () {
                    isNoUnnaturalSmell = true;
                    isUnnaturalSmell = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //تمثيل غذائى
                Questions(
                  questionsText: "هل لديك نوبات ونقص فى المناعة؟",
                  checkQuestionTrue: isUnnaturalSmell,
                  checkQuestionFalse: isNoUnnaturalSmell,
                  onTrueTap: () {
                    isNoUnnaturalSmell = false;
                    isUnnaturalSmell = true;
                  },
                  onFalseTap: () {
                    isNoUnnaturalSmell = true;
                    isUnnaturalSmell = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //قولون عصبى
                Questions(
                  questionsText: "هل تشعر بانتفاخ أو تطبُّل البطن",
                  checkQuestionTrue: isIrritableBowelSyndrome,
                  checkQuestionFalse: isNoIrritableBowelSyndrome,
                  onTrueTap: () {
                    isNoIrritableBowelSyndrome = false;
                    isIrritableBowelSyndrome = true;
                  },
                  onFalseTap: () {
                    isNoIrritableBowelSyndrome = true;
                    isIrritableBowelSyndrome = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //قولون عصبى
                Questions(
                  questionsText: "هل تشعر وجع قليل أو مبهم أو تقلُّصات مؤلمة في أسفل البطن",
                  checkQuestionTrue: isIrritableBowelSyndrome,
                  checkQuestionFalse: isNoIrritableBowelSyndrome,
                  onTrueTap: () {
                    isNoIrritableBowelSyndrome = false;
                    isIrritableBowelSyndrome = true;
                  },
                  onFalseTap: () {
                    isNoIrritableBowelSyndrome = true;
                    isIrritableBowelSyndrome = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //عسر الهضم
                Questions(
                  questionsText: "هل تشعر بإحساس بعدم راحة في أعلى البطن؟",
                  checkQuestionTrue: isIndigestion,
                  checkQuestionFalse: isNoIndigestion,
                  onTrueTap: () {
                    isNoIndigestion = false;
                    isIndigestion = true;
                  },
                  onFalseTap: () {
                    isNoIndigestion = true;
                    isIndigestion = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //عسر الهضم
                Questions(
                  questionsText: "هل تشعر بإحساس انتفاخ في البطن؟",
                  checkQuestionTrue: isIndigestion,
                  checkQuestionFalse: isNoIndigestion,
                  onTrueTap: () {
                    isNoIndigestion = false;
                    isIndigestion = true;
                  },
                  onFalseTap: () {
                    isNoIndigestion = true;
                    isIndigestion = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //اعراض التهاب المريء
                Questions(
                  questionsText:
                      "هل تشعر بصعوبة فى بلع الطعام وحرقة فى المعدة؟",
                  checkQuestionTrue: isEsophagitis,
                  checkQuestionFalse: isNoEsophagitis,
                  onTrueTap: () {
                    isNoEsophagitis = false;
                    isEsophagitis = true;
                  },
                  onFalseTap: () {
                    isNoEsophagitis = true;
                    isEsophagitis = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //اعراض التهاب المريء
                Questions(
                  questionsText:
                  "هل تشعر بألم فى الصدر عند الأكل، خاصةً خلف عظمة القص.؟",
                  checkQuestionTrue: isEsophagitis,
                  checkQuestionFalse: isNoEsophagitis,
                  onTrueTap: () {
                    isNoEsophagitis = false;
                    isEsophagitis = true;
                  },
                  onFalseTap: () {
                    isNoEsophagitis = true;
                    isEsophagitis = false;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: (){
                    SelectIllness();
                  },
                  child: Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffc8c1c1)),
                    child: const Text(
                      "انتهيت",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

