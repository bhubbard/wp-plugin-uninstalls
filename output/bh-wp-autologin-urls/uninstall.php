<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_enable_checkout_login_reminder');
delete_site_option('woocommerce_enable_checkout_login_reminder');
delete_option('bh_wp_autologin_urls_seconds_until_expiry');
delete_site_option('bh_wp_autologin_urls_seconds_until_expiry');
delete_option('bh_wp_autologin_urls_klaviyo_private_key');
delete_site_option('bh_wp_autologin_urls_klaviyo_private_key');
delete_option('bh_wp_autologin_urls_is_admin_enabled');
delete_site_option('bh_wp_autologin_urls_is_admin_enabled');
delete_option('bh_wp_autologin_urls_subject_filter_regex_dictionary');
delete_site_option('bh_wp_autologin_urls_subject_filter_regex_dictionary');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-recent-error-data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_log_level' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

