<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('timify_settings');
delete_site_option('timify_settings');
delete_option('timify_reading_settings');
delete_site_option('timify_reading_settings');
delete_option('timify_word_settings');
delete_site_option('timify_word_settings');
delete_option('timify_view_settings');
delete_site_option('timify_view_settings');
delete_option('timify_admin_notice_info');
delete_site_option('timify_admin_notice_info');
delete_option('track_transient');
delete_site_option('track_transient');
delete_option('has_transient');
delete_site_option('has_transient');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_timify_admin_notice_time_%', '_site_transient_timify_admin_notice_time_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

