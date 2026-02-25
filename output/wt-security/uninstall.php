<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtsec_api_key');
delete_site_option('wtsec_api_key');
delete_option('wtsec_am_installed_file');
delete_site_option('wtsec_am_installed_file');
delete_option('wtsec_waf_installed_file');
delete_site_option('wtsec_waf_installed_file');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wtsec_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wtotem_api_key');
delete_site_option('wtotem_api_key');
delete_option('wtotem_am_installed_file');
delete_site_option('wtotem_am_installed_file');
delete_option('wtotem_waf_installed_file');
delete_site_option('wtotem_waf_installed_file');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wtotem_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('webtotem_daily_cron');
wp_clear_scheduled_hook('wtotem_step_init_cron');

