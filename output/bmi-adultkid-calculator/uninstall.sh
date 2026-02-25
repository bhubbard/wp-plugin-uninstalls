#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Font_family_calc_visual'
wp option delete 'Font_color1_calc_visual'
wp option delete 'Font_color3_calc_visual'
wp option delete 'Font_color2_calc_visual'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%TitleDesc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Units'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%YourHeight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Cm'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%HeightReg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Weight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%YourWeight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Kg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%WeightReg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Ft'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%In'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%HeightRegFt'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Lb'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%St'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%WeightRegLb'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Calculate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Placeholder'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%BMI'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Category'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%You'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Underweight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Healthy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Overweight'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Obese'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Normal1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Normal2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Normal2Lb'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Recalculate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Gender'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Boy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Girl'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Age'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Year'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Month'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%AgeReg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Category1'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Category2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Category3'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%Category3Lb'"
wp option delete 'lang_bmi_calc'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%BackupLink'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%LinkOption'"
wp option delete 'lang_bmi_calcEnglishTitle'
wp option delete 'lang_bmi_calcEnglishUnits'
wp option delete 'lang_bmi_calcEnglishTitleDesc'
wp option delete 'kidlang_bmi_calcEnglishTitleDesc'
wp option delete 'lang_bmi_calcEnglishHeight'
wp option delete 'lang_bmi_calcEnglishYourHeight'
wp option delete 'lang_bmi_calcEnglishCm'
wp option delete 'lang_bmi_calcEnglishFt'
wp option delete 'lang_bmi_calcEnglishIn'
wp option delete 'lang_bmi_calcEnglishWeight'
wp option delete 'lang_bmi_calcEnglishYourWeight'
wp option delete 'lang_bmi_calcEnglishKg'
wp option delete 'lang_bmi_calcEnglishLb'
wp option delete 'lang_bmi_calcEnglishSt'
wp option delete 'lang_bmi_calcEnglishHeightReg'
wp option delete 'lang_bmi_calcEnglishWeightReg'
wp option delete 'lang_bmi_calcEnglishHeightRegFt'
wp option delete 'lang_bmi_calcEnglishWeightRegLb'
wp option delete 'lang_bmi_calcEnglishCalculate'
wp option delete 'lang_bmi_calcEnglishRecalculate'
wp option delete 'lang_bmi_calcEnglishPlaceholder'
wp option delete 'lang_bmi_calcEnglishBMI'
wp option delete 'lang_bmi_calcEnglishCategory'
wp option delete 'lang_bmi_calcEnglishHealthy'
wp option delete 'lang_bmi_calcEnglishUnderweight'
wp option delete 'lang_bmi_calcEnglishOverweight'
wp option delete 'lang_bmi_calcEnglishObese'
wp option delete 'lang_bmi_calcEnglishNormal1'
wp option delete 'lang_bmi_calcEnglishNormal2'
wp option delete 'lang_bmi_calcEnglishNormal2Lb'
wp option delete 'lang_bmi_calcEnglishYou'
wp option delete 'kidlang_bmi_calcEnglishYourHeight'
wp option delete 'kidlang_bmi_calcEnglishCm'
wp option delete 'kidlang_bmi_calcEnglishFt'
wp option delete 'kidlang_bmi_calcEnglishIn'
wp option delete 'kidlang_bmi_calcEnglishYourWeight'
wp option delete 'kidlang_bmi_calcEnglishKg'
wp option delete 'kidlang_bmi_calcEnglishLb'
wp option delete 'kidlang_bmi_calcEnglishSt'
wp option delete 'kidlang_bmi_calcEnglishAge'
wp option delete 'kidlang_bmi_calcEnglishYear'
wp option delete 'kidlang_bmi_calcEnglishMonth'
wp option delete 'kidlang_bmi_calcEnglishGender'
wp option delete 'kidlang_bmi_calcEnglishBoy'
wp option delete 'kidlang_bmi_calcEnglishGirl'
wp option delete 'kidlang_bmi_calcEnglishAgeReg'
wp option delete 'kidlang_bmi_calcEnglishHeightReg'
wp option delete 'kidlang_bmi_calcEnglishWeightReg'
wp option delete 'kidlang_bmi_calcEnglishHeightRegFt'
wp option delete 'kidlang_bmi_calcEnglishWeightRegLb'
wp option delete 'kidlang_bmi_calcEnglishPlaceholder'
wp option delete 'kidlang_bmi_calcEnglishBMI'
wp option delete 'kidlang_bmi_calcEnglishCategory1'
wp option delete 'kidlang_bmi_calcEnglishCategory2'
wp option delete 'kidlang_bmi_calcEnglishCategory3'
wp option delete 'kidlang_bmi_calcEnglishCategory3Lb'

