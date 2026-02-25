<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ht_cc_service_content');
delete_site_option('ht_cc_service_content');
delete_option('htcc_as_options');
delete_site_option('htcc_as_options');
delete_option('htcc_custom_options');
delete_site_option('htcc_custom_options');
delete_option('htcc_options');
delete_site_option('htcc_options');
delete_option('htcc_fb_ref');
delete_site_option('htcc_fb_ref');
delete_option('mobilemonkey_environment');
delete_site_option('mobilemonkey_environment');
delete_option('mobilemonkey_active_page_info');
delete_site_option('mobilemonkey_active_page_info');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%token' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%company_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%active_page_info' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%fb_internal_page_id' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%available_company' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%page_info' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%account_info' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%message_statistic' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%current_subscribe' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%wp_plan' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%environment' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('htcc_fb_js_src');
delete_site_option('htcc_fb_js_src');
delete_option('htcc_plugin_details');
delete_site_option('htcc_plugin_details');
delete_option('mobilemonkey_token');
delete_site_option('mobilemonkey_token');

// Delete Transients
delete_transient('wp-chatbot__previously-connected-page');
delete_site_transient('wp-chatbot__previously-connected-page');
delete_transient('banner_notice_off');
delete_site_transient('banner_notice_off');
delete_transient('lead_notice_off');
delete_site_transient('lead_notice_off');
delete_transient('promo_notice_off');
delete_site_transient('promo_notice_off');
delete_transient('done-tab');
delete_site_transient('done-tab');
delete_transient('ht_cc_admin_sidebar__hide_mobile_app_banner');
delete_site_transient('ht_cc_admin_sidebar__hide_mobile_app_banner');
delete_transient('pre_value');
delete_site_transient('pre_value');
delete_transient('current-tab');
delete_site_transient('current-tab');
delete_transient('cg_notice_off');
delete_site_transient('cg_notice_off');

