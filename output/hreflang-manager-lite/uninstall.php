<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daexthrmal_options_version');
delete_site_option('daexthrmal_options_version');
delete_option('daexthrmal_database_version');
delete_site_option('daexthrmal_database_version');
delete_option('daexthrmal_language');
delete_site_option('daexthrmal_language');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'daexthrmal_default_language_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daexthrmal_script');
delete_site_option('daexthrmal_script');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'daexthrmal_default_script_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daexthrmal_locale');
delete_site_option('daexthrmal_locale');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'daexthrmal_default_locale_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_auto_delete' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('daexthrmal_auto_alternate_pages');
delete_site_option('daexthrmal_auto_alternate_pages');
delete_option('daexthrmal_show_log');
delete_site_option('daexthrmal_show_log');
delete_option('daexthrmal_detect_url_mode');
delete_site_option('daexthrmal_detect_url_mode');
delete_option('daexthrmal_https');
delete_site_option('daexthrmal_https');
delete_option('daexthrmal_sample_future_permalink');
delete_site_option('daexthrmal_sample_future_permalink');
delete_option('daim_dismissible_notice_a');
delete_site_option('daim_dismissible_notice_a');
delete_option('daexthrmal_auto_trailing_slash');
delete_site_option('daexthrmal_auto_trailing_slash');

