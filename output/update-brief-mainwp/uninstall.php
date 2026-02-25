<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('upd_brief_mainwp_version');
delete_site_option('upd_brief_mainwp_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_APIManAdder' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('upd_brief_settings');
delete_site_option('upd_brief_settings');
delete_option('upd_brief_encrypted_mainwp_api_key');
delete_site_option('upd_brief_encrypted_mainwp_api_key');
delete_option('upd_brief_encrypted_update_brief_api_key');
delete_site_option('upd_brief_encrypted_update_brief_api_key');

// Clear Cron Jobs
wp_clear_scheduled_hook('upd_brief_cleanup_logs');

