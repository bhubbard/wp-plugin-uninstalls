<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iawgf_migrated_slug_to_new');
delete_site_option('iawgf_migrated_slug_to_new');
delete_option('iawgf_backup_settings');
delete_site_option('iawgf_backup_settings');
delete_option('iawgf_settings_source');
delete_site_option('iawgf_settings_source');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%access_token' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('iawgf_fs_access_token');
delete_site_option('iawgf_fs_access_token');
delete_option('iawgf_fs_refresh_token');
delete_site_option('iawgf_fs_refresh_token');
delete_option('iawgf_rating_asked');
delete_site_option('iawgf_rating_asked');
delete_option('iawgf_task_creation_count');
delete_site_option('iawgf_task_creation_count');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%rating_asked' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('oauth_state');
delete_site_transient('oauth_state');
delete_transient('oauth_code_verifier');
delete_site_transient('oauth_code_verifier');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('gops_error');
delete_site_transient('gops_error');
delete_transient('gops_notice');
delete_site_transient('gops_notice');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('asana_token_refresh');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

