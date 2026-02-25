<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('alg_wc_products_per_page_enabled');
delete_site_option('alg_wc_products_per_page_enabled');
delete_option('alg_wc_products_per_page_session_enabled');
delete_site_option('alg_wc_products_per_page_session_enabled');
delete_option('alg_wc_products_per_page_cookie_enabled');
delete_site_option('alg_wc_products_per_page_cookie_enabled');
delete_option('alg_wc_products_per_page_wc_shortcode');
delete_site_option('alg_wc_products_per_page_wc_shortcode');
delete_option('alg_products_per_page_position');
delete_site_option('alg_products_per_page_position');
delete_option('alg_wc_products_per_page_position_priorities');
delete_site_option('alg_wc_products_per_page_position_priorities');
delete_option('alg_products_per_page_position_priority');
delete_site_option('alg_products_per_page_position_priority');
delete_option('alg_wc_products_per_page_position_custom');
delete_site_option('alg_wc_products_per_page_position_custom');
delete_option('alg_wc_products_per_page_custom_css');
delete_site_option('alg_wc_products_per_page_custom_css');
delete_option('alg_products_per_page_text');
delete_site_option('alg_products_per_page_text');
delete_option('alg_wc_products_per_page_select_class');
delete_site_option('alg_wc_products_per_page_select_class');
delete_option('alg_wc_products_per_page_select_style');
delete_site_option('alg_wc_products_per_page_select_style');
delete_option('alg_wc_products_per_page_before_html');
delete_site_option('alg_wc_products_per_page_before_html');
delete_option('alg_wc_products_per_page_after_html');
delete_site_option('alg_wc_products_per_page_after_html');
delete_option('alg_wc_products_per_page_radio_glue');
delete_site_option('alg_wc_products_per_page_radio_glue');
delete_option('alg_wc_products_per_page_form_method');
delete_site_option('alg_wc_products_per_page_form_method');
delete_option('alg_wc_products_per_page_cookie_sec');
delete_site_option('alg_wc_products_per_page_cookie_sec');
delete_option('alg_wc_products_per_page_session_force_start');
delete_site_option('alg_wc_products_per_page_session_force_start');
delete_option('alg_wc_products_per_page_scopes');
delete_site_option('alg_wc_products_per_page_scopes');
delete_option('alg_products_per_page_default');
delete_site_option('alg_products_per_page_default');
delete_option('alg_products_per_page_version');
delete_site_option('alg_products_per_page_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_reset' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

