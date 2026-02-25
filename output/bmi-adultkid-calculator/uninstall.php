<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Font_family_calc_visual');
delete_site_option('Font_family_calc_visual');
delete_option('Font_color1_calc_visual');
delete_site_option('Font_color1_calc_visual');
delete_option('Font_color3_calc_visual');
delete_site_option('Font_color3_calc_visual');
delete_option('Font_color2_calc_visual');
delete_site_option('Font_color2_calc_visual');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Title' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%TitleDesc' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Units' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Height' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%YourHeight' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Cm' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%HeightReg' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Weight' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%YourWeight' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Kg' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%WeightReg' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Ft' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%In' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%HeightRegFt' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Lb' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%St' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%WeightRegLb' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Calculate' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Placeholder' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%BMI' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Category' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%You' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Underweight' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Healthy' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Overweight' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Obese' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Normal1' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Normal2' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Normal2Lb' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Recalculate' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Gender' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Boy' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Girl' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Age' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Year' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Month' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%AgeReg' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Category1' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Category2' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Category3' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%Category3Lb' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lang_bmi_calc');
delete_site_option('lang_bmi_calc');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%BackupLink' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%LinkOption' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lang_bmi_calcEnglishTitle');
delete_site_option('lang_bmi_calcEnglishTitle');
delete_option('lang_bmi_calcEnglishUnits');
delete_site_option('lang_bmi_calcEnglishUnits');
delete_option('lang_bmi_calcEnglishTitleDesc');
delete_site_option('lang_bmi_calcEnglishTitleDesc');
delete_option('kidlang_bmi_calcEnglishTitleDesc');
delete_site_option('kidlang_bmi_calcEnglishTitleDesc');
delete_option('lang_bmi_calcEnglishHeight');
delete_site_option('lang_bmi_calcEnglishHeight');
delete_option('lang_bmi_calcEnglishYourHeight');
delete_site_option('lang_bmi_calcEnglishYourHeight');
delete_option('lang_bmi_calcEnglishCm');
delete_site_option('lang_bmi_calcEnglishCm');
delete_option('lang_bmi_calcEnglishFt');
delete_site_option('lang_bmi_calcEnglishFt');
delete_option('lang_bmi_calcEnglishIn');
delete_site_option('lang_bmi_calcEnglishIn');
delete_option('lang_bmi_calcEnglishWeight');
delete_site_option('lang_bmi_calcEnglishWeight');
delete_option('lang_bmi_calcEnglishYourWeight');
delete_site_option('lang_bmi_calcEnglishYourWeight');
delete_option('lang_bmi_calcEnglishKg');
delete_site_option('lang_bmi_calcEnglishKg');
delete_option('lang_bmi_calcEnglishLb');
delete_site_option('lang_bmi_calcEnglishLb');
delete_option('lang_bmi_calcEnglishSt');
delete_site_option('lang_bmi_calcEnglishSt');
delete_option('lang_bmi_calcEnglishHeightReg');
delete_site_option('lang_bmi_calcEnglishHeightReg');
delete_option('lang_bmi_calcEnglishWeightReg');
delete_site_option('lang_bmi_calcEnglishWeightReg');
delete_option('lang_bmi_calcEnglishHeightRegFt');
delete_site_option('lang_bmi_calcEnglishHeightRegFt');
delete_option('lang_bmi_calcEnglishWeightRegLb');
delete_site_option('lang_bmi_calcEnglishWeightRegLb');
delete_option('lang_bmi_calcEnglishCalculate');
delete_site_option('lang_bmi_calcEnglishCalculate');
delete_option('lang_bmi_calcEnglishRecalculate');
delete_site_option('lang_bmi_calcEnglishRecalculate');
delete_option('lang_bmi_calcEnglishPlaceholder');
delete_site_option('lang_bmi_calcEnglishPlaceholder');
delete_option('lang_bmi_calcEnglishBMI');
delete_site_option('lang_bmi_calcEnglishBMI');
delete_option('lang_bmi_calcEnglishCategory');
delete_site_option('lang_bmi_calcEnglishCategory');
delete_option('lang_bmi_calcEnglishHealthy');
delete_site_option('lang_bmi_calcEnglishHealthy');
delete_option('lang_bmi_calcEnglishUnderweight');
delete_site_option('lang_bmi_calcEnglishUnderweight');
delete_option('lang_bmi_calcEnglishOverweight');
delete_site_option('lang_bmi_calcEnglishOverweight');
delete_option('lang_bmi_calcEnglishObese');
delete_site_option('lang_bmi_calcEnglishObese');
delete_option('lang_bmi_calcEnglishNormal1');
delete_site_option('lang_bmi_calcEnglishNormal1');
delete_option('lang_bmi_calcEnglishNormal2');
delete_site_option('lang_bmi_calcEnglishNormal2');
delete_option('lang_bmi_calcEnglishNormal2Lb');
delete_site_option('lang_bmi_calcEnglishNormal2Lb');
delete_option('lang_bmi_calcEnglishYou');
delete_site_option('lang_bmi_calcEnglishYou');
delete_option('kidlang_bmi_calcEnglishYourHeight');
delete_site_option('kidlang_bmi_calcEnglishYourHeight');
delete_option('kidlang_bmi_calcEnglishCm');
delete_site_option('kidlang_bmi_calcEnglishCm');
delete_option('kidlang_bmi_calcEnglishFt');
delete_site_option('kidlang_bmi_calcEnglishFt');
delete_option('kidlang_bmi_calcEnglishIn');
delete_site_option('kidlang_bmi_calcEnglishIn');
delete_option('kidlang_bmi_calcEnglishYourWeight');
delete_site_option('kidlang_bmi_calcEnglishYourWeight');
delete_option('kidlang_bmi_calcEnglishKg');
delete_site_option('kidlang_bmi_calcEnglishKg');
delete_option('kidlang_bmi_calcEnglishLb');
delete_site_option('kidlang_bmi_calcEnglishLb');
delete_option('kidlang_bmi_calcEnglishSt');
delete_site_option('kidlang_bmi_calcEnglishSt');
delete_option('kidlang_bmi_calcEnglishAge');
delete_site_option('kidlang_bmi_calcEnglishAge');
delete_option('kidlang_bmi_calcEnglishYear');
delete_site_option('kidlang_bmi_calcEnglishYear');
delete_option('kidlang_bmi_calcEnglishMonth');
delete_site_option('kidlang_bmi_calcEnglishMonth');
delete_option('kidlang_bmi_calcEnglishGender');
delete_site_option('kidlang_bmi_calcEnglishGender');
delete_option('kidlang_bmi_calcEnglishBoy');
delete_site_option('kidlang_bmi_calcEnglishBoy');
delete_option('kidlang_bmi_calcEnglishGirl');
delete_site_option('kidlang_bmi_calcEnglishGirl');
delete_option('kidlang_bmi_calcEnglishAgeReg');
delete_site_option('kidlang_bmi_calcEnglishAgeReg');
delete_option('kidlang_bmi_calcEnglishHeightReg');
delete_site_option('kidlang_bmi_calcEnglishHeightReg');
delete_option('kidlang_bmi_calcEnglishWeightReg');
delete_site_option('kidlang_bmi_calcEnglishWeightReg');
delete_option('kidlang_bmi_calcEnglishHeightRegFt');
delete_site_option('kidlang_bmi_calcEnglishHeightRegFt');
delete_option('kidlang_bmi_calcEnglishWeightRegLb');
delete_site_option('kidlang_bmi_calcEnglishWeightRegLb');
delete_option('kidlang_bmi_calcEnglishPlaceholder');
delete_site_option('kidlang_bmi_calcEnglishPlaceholder');
delete_option('kidlang_bmi_calcEnglishBMI');
delete_site_option('kidlang_bmi_calcEnglishBMI');
delete_option('kidlang_bmi_calcEnglishCategory1');
delete_site_option('kidlang_bmi_calcEnglishCategory1');
delete_option('kidlang_bmi_calcEnglishCategory2');
delete_site_option('kidlang_bmi_calcEnglishCategory2');
delete_option('kidlang_bmi_calcEnglishCategory3');
delete_site_option('kidlang_bmi_calcEnglishCategory3');
delete_option('kidlang_bmi_calcEnglishCategory3Lb');
delete_site_option('kidlang_bmi_calcEnglishCategory3Lb');

