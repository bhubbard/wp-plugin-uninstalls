<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('termageddon_usercentrics_settings_id');
delete_site_option('termageddon_usercentrics_settings_id');
delete_option('termageddon_usercentrics_embed_code');
delete_site_option('termageddon_usercentrics_embed_code');
delete_option('termageddon_usercentrics_script_snippets');
delete_site_option('termageddon_usercentrics_script_snippets');
delete_option('termageddon_usercentrics_disable_admin');
delete_site_option('termageddon_usercentrics_disable_admin');
delete_option('termageddon_usercentrics_disable_editor');
delete_site_option('termageddon_usercentrics_disable_editor');
delete_option('termageddon_usercentrics_disable_logged_in');
delete_site_option('termageddon_usercentrics_disable_logged_in');
delete_option('termageddon_usercentrics_location_psl_hide');
delete_site_option('termageddon_usercentrics_location_psl_hide');
delete_option('termageddon_usercentrics_psl_alternate');
delete_site_option('termageddon_usercentrics_psl_alternate');
delete_option('termageddon_usercentrics_embed_priority');
delete_site_option('termageddon_usercentrics_embed_priority');
delete_option('termageddon_usercentrics_embed_injection_method');
delete_site_option('termageddon_usercentrics_embed_injection_method');
delete_option('termageddon_usercentrics_embed_version');
delete_site_option('termageddon_usercentrics_embed_version');
delete_option('termageddon_usercentrics_disable_auto_blocker');
delete_site_option('termageddon_usercentrics_disable_auto_blocker');
delete_option('termageddon_usercentrics_disable_cdn');
delete_site_option('termageddon_usercentrics_disable_cdn');
delete_option('termageddon_usercentrics_disable_troubleshooting');
delete_site_option('termageddon_usercentrics_disable_troubleshooting');
delete_option('termageddon_usercentrics_geoip_enabled');
delete_site_option('termageddon_usercentrics_geoip_enabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'termageddon_usercentrics_show_in_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('termageddon_usercentrics_location_debug');
delete_site_option('termageddon_usercentrics_location_debug');
delete_option('termageddon_usercentrics_location_ajax');
delete_site_option('termageddon_usercentrics_location_ajax');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'termageddon_usercentrics_integration_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('termageddon_usercentrics_auto_refresh_providers');
delete_site_option('termageddon_usercentrics_auto_refresh_providers');
delete_option('termageddon_usercentrics_disable_blocking_providers');
delete_site_option('termageddon_usercentrics_disable_blocking_providers');
delete_option('termageddon_usercentrics_download_error_count');
delete_site_option('termageddon_usercentrics_download_error_count');
delete_option('termageddon_usercentrics_download_error_log');
delete_site_option('termageddon_usercentrics_download_error_log');

// Clear Cron Jobs
wp_clear_scheduled_hook('termageddon_usercentrics_maxmind_download');

