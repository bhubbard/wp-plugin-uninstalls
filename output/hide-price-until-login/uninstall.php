<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_empty_user_name_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_empty_email_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_empty_password_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_empty_confirmed_password_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_mis_matched_password_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_register_success_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_login_success_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ced_hpul_captcha_option');
delete_site_option('ced_hpul_captcha_option');
delete_option('ced_hp_captch_site_key');
delete_site_option('ced_hp_captch_site_key');
delete_option('ced_hpul_enable_hide_price');
delete_site_option('ced_hpul_enable_hide_price');
delete_option('ced_hpr_role');
delete_site_option('ced_hpr_role');
delete_option('ced_hp_matched_password_text');
delete_site_option('ced_hp_matched_password_text');
delete_option('ced_hp_empty_password_text');
delete_site_option('ced_hp_empty_password_text');
delete_option('ced_hp_password_for_price');
delete_site_option('ced_hp_password_for_price');
delete_option('woocommerce_enable_shipping_calc');
delete_site_option('woocommerce_enable_shipping_calc');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');
delete_option('ced_hp_order_email_price_guest');
delete_site_option('ced_hp_order_email_price_guest');
delete_option('ced_hp_order_email_price_logged_in');
delete_site_option('ced_hp_order_email_price_logged_in');
delete_option('ced_hpul_extra_pages_options');
delete_site_option('ced_hpul_extra_pages_options');
delete_option('ced_hpul_register_form');
delete_site_option('ced_hpul_register_form');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_register_link' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_register_first_login_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_register_second_login_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_register_third_login_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ced_hpul_summary_text');
delete_site_option('ced_hpul_summary_text');
delete_option('ced_hp_captch_secret_key');
delete_site_option('ced_hp_captch_secret_key');
delete_option('ced_hp_order_now_text');
delete_site_option('ced_hp_order_now_text');
delete_option('ced_hp_password_field_placeholder');
delete_site_option('ced_hp_password_field_placeholder');
delete_option('ced_hp_submit_text');
delete_site_option('ced_hp_submit_text');
delete_option('ced_hp_wrong_password_text');
delete_site_option('ced_hp_wrong_password_text');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_register_submit_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_login_submit_text' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

