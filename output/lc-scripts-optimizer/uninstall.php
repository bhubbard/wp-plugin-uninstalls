<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lcso_cache_times');
delete_site_option('lcso_cache_times');
delete_option('lcso_enable');
delete_site_option('lcso_enable');
delete_option('lcso_not_for_html');
delete_site_option('lcso_not_for_html');
delete_option('lcso_queued_scripts');
delete_site_option('lcso_queued_scripts');
delete_option('lcso_queued_styles');
delete_site_option('lcso_queued_styles');
delete_option('lcso_js_filter');
delete_site_option('lcso_js_filter');
delete_option('lcso_css_filter');
delete_site_option('lcso_css_filter');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lcso_ignored_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lcso_js_ignore');
delete_site_option('lcso_js_ignore');
delete_option('lcso_css_ignore');
delete_site_option('lcso_css_ignore');
delete_option('lcso_inl_js_ignore');
delete_site_option('lcso_inl_js_ignore');
delete_option('lcso_tweak_htaccess');
delete_site_option('lcso_tweak_htaccess');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_ignore' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_filter' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_type' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

