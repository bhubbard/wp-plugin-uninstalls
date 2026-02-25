<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'micaptcha_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('micaptcha_loading_mode');
delete_site_option('micaptcha_loading_mode');
delete_option('micaptcha_type');
delete_site_option('micaptcha_type');
delete_option('micaptcha_letters');
delete_site_option('micaptcha_letters');
delete_option('micaptcha_total_no_of_characters');
delete_site_option('micaptcha_total_no_of_characters');
delete_option('micaptcha_use_curve');
delete_site_option('micaptcha_use_curve');
delete_option('micaptcha_use_noise');
delete_site_option('micaptcha_use_noise');
delete_option('micaptcha_distort');
delete_site_option('micaptcha_distort');
delete_option('micaptcha_allowlist_ips');
delete_site_option('micaptcha_allowlist_ips');
delete_option('micaptcha_timeout_time');
delete_site_option('micaptcha_timeout_time');
delete_option('micaptcha_case_sensitive');
delete_site_option('micaptcha_case_sensitive');
delete_option('micaptcha_login');
delete_site_option('micaptcha_login');
delete_option('micaptcha_password');
delete_site_option('micaptcha_password');
delete_option('micaptcha_register');
delete_site_option('micaptcha_register');
delete_option('micaptcha_lost');
delete_site_option('micaptcha_lost');
delete_option('micaptcha_comments');
delete_site_option('micaptcha_comments');
delete_option('micaptcha_registered');
delete_site_option('micaptcha_registered');

