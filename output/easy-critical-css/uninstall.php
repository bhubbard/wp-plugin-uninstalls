<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_cc_activation');
delete_site_option('easy_cc_activation');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'easy_cc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('easy_cc_db_version');
delete_site_option('easy_cc_db_version');
delete_option('fs_accounts');
delete_site_option('fs_accounts');
delete_option('easy_cc_version');
delete_site_option('easy_cc_version');
delete_option('easy_cc_critical_css_mode');
delete_site_option('easy_cc_critical_css_mode');
delete_option('perfmatters_options');
delete_site_option('perfmatters_options');
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
delete_transient('easy_cc_is_local_site');
delete_site_transient('easy_cc_is_local_site');
delete_transient('easy_cc_is_rest_api_reachable');
delete_site_transient('easy_cc_is_rest_api_reachable');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('easy_cc_cleanup_old_handshakes');
wp_clear_scheduled_hook('easy_cc_detect_timeouts');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

