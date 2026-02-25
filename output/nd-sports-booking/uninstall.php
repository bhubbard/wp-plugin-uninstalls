<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nd_spt_customizer_color_dark_1');
delete_site_option('nd_spt_customizer_color_dark_1');
delete_option('nd_spt_customizer_color_1');
delete_site_option('nd_spt_customizer_color_1');
delete_option('nd_spt_customizer_color_2');
delete_site_option('nd_spt_customizer_color_2');
delete_option('nd_spt_max_players');
delete_site_option('nd_spt_max_players');
delete_option('nd_spt_occasions');
delete_site_option('nd_spt_occasions');
delete_option('nd_spt_timing_qnt');
delete_site_option('nd_spt_timing_qnt');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_1_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_2_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_3_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_4_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_5_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_6_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_7_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_start_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_timing_end_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nicdark_theme_author');
delete_site_option('nicdark_theme_author');
delete_option('nd_spt_exceptions_qnt');
delete_site_option('nd_spt_exceptions_qnt');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_exception_date_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_exception_close_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_exception_start_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nd_spt_exception_end_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nd_spt_booking_duration');
delete_site_option('nd_spt_booking_duration');
delete_option('nd_spt_general_description');
delete_site_option('nd_spt_general_description');
delete_option('nd_spt_deposit_players');
delete_site_option('nd_spt_deposit_players');
delete_option('nd_spt_br_description');
delete_site_option('nd_spt_br_description');
delete_option('nd_spt_default_order_status');
delete_site_option('nd_spt_default_order_status');
delete_option('nd_spt_dev_mode');
delete_site_option('nd_spt_dev_mode');
delete_option('nd_spt_email_template');
delete_site_option('nd_spt_email_template');
delete_option('nd_spt_stripe_enable');
delete_site_option('nd_spt_stripe_enable');
delete_option('nd_spt_stripe_deposit');
delete_site_option('nd_spt_stripe_deposit');
delete_option('nd_spt_stripe_currency');
delete_site_option('nd_spt_stripe_currency');
delete_option('nd_spt_stripe_description');
delete_site_option('nd_spt_stripe_description');
delete_option('nd_spt_stripe_public_key');
delete_site_option('nd_spt_stripe_public_key');
delete_option('nd_spt_stripe_secret_key');
delete_site_option('nd_spt_stripe_secret_key');
delete_option('nd_spt_paypal_enable');
delete_site_option('nd_spt_paypal_enable');
delete_option('nd_spt_paypal_deposit');
delete_site_option('nd_spt_paypal_deposit');
delete_option('nd_spt_paypal_currency');
delete_site_option('nd_spt_paypal_currency');
delete_option('nd_spt_paypal_description');
delete_site_option('nd_spt_paypal_description');
delete_option('nd_spt_paypal_dev_mode');
delete_site_option('nd_spt_paypal_dev_mode');
delete_option('nd_spt_paypal_email');
delete_site_option('nd_spt_paypal_email');
delete_option('nd_spt_paypal_token');
delete_site_option('nd_spt_paypal_token');
delete_option('nd_spt_textarea');
delete_site_option('nd_spt_textarea');
delete_option('nd_spt_slot_interval');
delete_site_option('nd_spt_slot_interval');
delete_option('nd_spt_terms_page');
delete_site_option('nd_spt_terms_page');
delete_option('nd_options_customizer_font_color_p');
delete_site_option('nd_options_customizer_font_color_p');
delete_option('nd_options_customizer_font_family_p');
delete_site_option('nd_options_customizer_font_family_p');

