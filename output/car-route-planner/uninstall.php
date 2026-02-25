<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crp_language');
delete_site_option('crp_language');
delete_option('crp_shortcode_type');
delete_site_option('crp_shortcode_type');
delete_option('crp_currency');
delete_site_option('crp_currency');
delete_option('crp_measure');
delete_site_option('crp_measure');
delete_option('crp_disable_font_auto_tuning');
delete_site_option('crp_disable_font_auto_tuning');
delete_option('crp_font_family');
delete_site_option('crp_font_family');
delete_option('crp_font_size');
delete_site_option('crp_font_size');
delete_option('crp_text_color');
delete_site_option('crp_text_color');
delete_option('crp_background_color');
delete_site_option('crp_background_color');
delete_option('crp_accent_color');
delete_site_option('crp_accent_color');
delete_option('crp_default_from');
delete_site_option('crp_default_from');
delete_option('crp_hide_from');
delete_site_option('crp_hide_from');
delete_option('crp_default_to');
delete_site_option('crp_default_to');
delete_option('crp_hide_to');
delete_site_option('crp_hide_to');
delete_option('crp_show_via');
delete_site_option('crp_show_via');
delete_option('crp_default_via');
delete_site_option('crp_default_via');
delete_option('crp_show_fuel_calc');
delete_site_option('crp_show_fuel_calc');
delete_option('crp_default_fuel_consumption');
delete_site_option('crp_default_fuel_consumption');
delete_option('crp_default_fuel_price');
delete_site_option('crp_default_fuel_price');
delete_option('crp_show_speed_profile');
delete_site_option('crp_show_speed_profile');
delete_option('crp_default_speed_limit_motorway');
delete_site_option('crp_default_speed_limit_motorway');
delete_option('crp_default_speed_limit_other');
delete_site_option('crp_default_speed_limit_other');
delete_option('crp_show_result_length');
delete_site_option('crp_show_result_length');
delete_option('crp_show_result_driving_time');
delete_site_option('crp_show_result_driving_time');
delete_option('crp_show_result_fuel_amount');
delete_site_option('crp_show_result_fuel_amount');
delete_option('crp_show_result_fuel_cost');
delete_site_option('crp_show_result_fuel_cost');
delete_option('crp_show_result_customized_cost');
delete_site_option('crp_show_result_customized_cost');
delete_option('crp_customized_cost_formula');
delete_site_option('crp_customized_cost_formula');
delete_option('crp_customized_cost_label');
delete_site_option('crp_customized_cost_label');
delete_option('crp_show_result_map');
delete_site_option('crp_show_result_map');
delete_option('crp_show_result_scheme');
delete_site_option('crp_show_result_scheme');
delete_option('crp_calculate_instantly');
delete_site_option('crp_calculate_instantly');
delete_option('crp_only_countries');
delete_site_option('crp_only_countries');
delete_option('crp_prefer_countries');
delete_site_option('crp_prefer_countries');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'crp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

