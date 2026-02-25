-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Font_family_calc_visual', 'Font_color1_calc_visual', 'Font_color3_calc_visual', 'Font_color2_calc_visual', 'lang_bmi_calc', 'lang_bmi_calcEnglishTitle', 'lang_bmi_calcEnglishUnits', 'lang_bmi_calcEnglishTitleDesc', 'kidlang_bmi_calcEnglishTitleDesc', 'lang_bmi_calcEnglishHeight', 'lang_bmi_calcEnglishYourHeight', 'lang_bmi_calcEnglishCm', 'lang_bmi_calcEnglishFt', 'lang_bmi_calcEnglishIn', 'lang_bmi_calcEnglishWeight', 'lang_bmi_calcEnglishYourWeight', 'lang_bmi_calcEnglishKg', 'lang_bmi_calcEnglishLb', 'lang_bmi_calcEnglishSt', 'lang_bmi_calcEnglishHeightReg', 'lang_bmi_calcEnglishWeightReg', 'lang_bmi_calcEnglishHeightRegFt', 'lang_bmi_calcEnglishWeightRegLb', 'lang_bmi_calcEnglishCalculate', 'lang_bmi_calcEnglishRecalculate', 'lang_bmi_calcEnglishPlaceholder', 'lang_bmi_calcEnglishBMI', 'lang_bmi_calcEnglishCategory', 'lang_bmi_calcEnglishHealthy', 'lang_bmi_calcEnglishUnderweight', 'lang_bmi_calcEnglishOverweight', 'lang_bmi_calcEnglishObese', 'lang_bmi_calcEnglishNormal1', 'lang_bmi_calcEnglishNormal2', 'lang_bmi_calcEnglishNormal2Lb', 'lang_bmi_calcEnglishYou', 'kidlang_bmi_calcEnglishYourHeight', 'kidlang_bmi_calcEnglishCm', 'kidlang_bmi_calcEnglishFt', 'kidlang_bmi_calcEnglishIn', 'kidlang_bmi_calcEnglishYourWeight', 'kidlang_bmi_calcEnglishKg', 'kidlang_bmi_calcEnglishLb', 'kidlang_bmi_calcEnglishSt', 'kidlang_bmi_calcEnglishAge', 'kidlang_bmi_calcEnglishYear', 'kidlang_bmi_calcEnglishMonth', 'kidlang_bmi_calcEnglishGender', 'kidlang_bmi_calcEnglishBoy', 'kidlang_bmi_calcEnglishGirl');
DELETE FROM wp_options WHERE option_name IN ('kidlang_bmi_calcEnglishAgeReg', 'kidlang_bmi_calcEnglishHeightReg', 'kidlang_bmi_calcEnglishWeightReg', 'kidlang_bmi_calcEnglishHeightRegFt', 'kidlang_bmi_calcEnglishWeightRegLb', 'kidlang_bmi_calcEnglishPlaceholder', 'kidlang_bmi_calcEnglishBMI', 'kidlang_bmi_calcEnglishCategory1', 'kidlang_bmi_calcEnglishCategory2', 'kidlang_bmi_calcEnglishCategory3', 'kidlang_bmi_calcEnglishCategory3Lb');
DELETE FROM wp_options WHERE option_name LIKE '%Title';
DELETE FROM wp_options WHERE option_name LIKE '%TitleDesc';
DELETE FROM wp_options WHERE option_name LIKE '%Units';
DELETE FROM wp_options WHERE option_name LIKE '%Height';
DELETE FROM wp_options WHERE option_name LIKE '%YourHeight';
DELETE FROM wp_options WHERE option_name LIKE '%Cm';
DELETE FROM wp_options WHERE option_name LIKE '%HeightReg';
DELETE FROM wp_options WHERE option_name LIKE '%Weight';
DELETE FROM wp_options WHERE option_name LIKE '%YourWeight';
DELETE FROM wp_options WHERE option_name LIKE '%Kg';
DELETE FROM wp_options WHERE option_name LIKE '%WeightReg';
DELETE FROM wp_options WHERE option_name LIKE '%Ft';
DELETE FROM wp_options WHERE option_name LIKE '%In';
DELETE FROM wp_options WHERE option_name LIKE '%HeightRegFt';
DELETE FROM wp_options WHERE option_name LIKE '%Lb';
DELETE FROM wp_options WHERE option_name LIKE '%St';
DELETE FROM wp_options WHERE option_name LIKE '%WeightRegLb';
DELETE FROM wp_options WHERE option_name LIKE '%Calculate';
DELETE FROM wp_options WHERE option_name LIKE '%Placeholder';
DELETE FROM wp_options WHERE option_name LIKE '%BMI';
DELETE FROM wp_options WHERE option_name LIKE '%Category';
DELETE FROM wp_options WHERE option_name LIKE '%You';
DELETE FROM wp_options WHERE option_name LIKE '%Underweight';
DELETE FROM wp_options WHERE option_name LIKE '%Healthy';
DELETE FROM wp_options WHERE option_name LIKE '%Overweight';
DELETE FROM wp_options WHERE option_name LIKE '%Obese';
DELETE FROM wp_options WHERE option_name LIKE '%Normal1';
DELETE FROM wp_options WHERE option_name LIKE '%Normal2';
DELETE FROM wp_options WHERE option_name LIKE '%Normal2Lb';
DELETE FROM wp_options WHERE option_name LIKE '%Recalculate';
DELETE FROM wp_options WHERE option_name LIKE '%Gender';
DELETE FROM wp_options WHERE option_name LIKE '%Boy';
DELETE FROM wp_options WHERE option_name LIKE '%Girl';
DELETE FROM wp_options WHERE option_name LIKE '%Age';
DELETE FROM wp_options WHERE option_name LIKE '%Year';
DELETE FROM wp_options WHERE option_name LIKE '%Month';
DELETE FROM wp_options WHERE option_name LIKE '%AgeReg';
DELETE FROM wp_options WHERE option_name LIKE '%Category1';
DELETE FROM wp_options WHERE option_name LIKE '%Category2';
DELETE FROM wp_options WHERE option_name LIKE '%Category3';
DELETE FROM wp_options WHERE option_name LIKE '%Category3Lb';
DELETE FROM wp_options WHERE option_name LIKE '%BackupLink';
DELETE FROM wp_options WHERE option_name LIKE '%LinkOption';

