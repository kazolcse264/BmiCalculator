class BmiDataGenerator{
  static const String underweightSevere= 'Underweight (Severe thinness)';
  static const String underweightModerate= 'Underweight (Moderate thinness)';
  static const String underweightMild= 'Underweight (Mild thinness)';
  static const String normalRange= 'Normal range';
  static const String overWeightPreObese = 'Overweight (Pre-obese)';
  static const String obeseClass1= 'Obese (Class I)';
  static const String obeseClass2= 'Obese (Class II)';
  static const String obeseClass3= 'Obese (Class III)';

  static String getCategory(double bmi){
    String category = '';
    if (bmi < 16.0) {
      category = underweightSevere;

    } else if (bmi >= 16.0 && bmi <= 16.9) {
      category = underweightModerate;
    } else if (bmi >= 17.0 && bmi <= 18.4) {
      category = underweightMild;
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      category = normalRange;
    } else if (bmi >= 25.0 && bmi <= 29.9) {
      category = overWeightPreObese;
    } else if (bmi >= 30.0 && bmi <= 34.9) {
      category = obeseClass1;
    } else if (bmi >= 35.0 && bmi <= 39.9) {
      category = obeseClass2;
    } else {
      category = obeseClass3;
    }
    return category;
  }

  static final Map<String, String> bmiDataMap = {
    underweightSevere : '< 16.0',
    underweightModerate : '16.0 – 16.9',
    underweightMild : '17.0 – 18.4',
    normalRange : '18.5 – 24.9',
    overWeightPreObese : '25.0 – 29.9',
    obeseClass1 : '30.0 – 34.9',
    obeseClass2 : '35.0 – 39.9',
    obeseClass3 : '≥ 40.0',
  };
}

