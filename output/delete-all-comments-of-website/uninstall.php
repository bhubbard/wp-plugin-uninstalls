<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nav_disable_comments_type');
delete_site_option('nav_disable_comments_type');
delete_option('nav_enable_role_exclusions');
delete_site_option('nav_enable_role_exclusions');
delete_option('nav_show_avatars');
delete_site_option('nav_show_avatars');
delete_option('nav_disable_api_comments');
delete_site_option('nav_disable_api_comments');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nav_disable_comments_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'nav_exclude_role_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('nav_disable_type');
delete_site_option('nav_disable_type');
delete_option('nav_disable_comments_global');
delete_site_option('nav_disable_comments_global');
delete_option('nav_excluded_roles');
delete_site_option('nav_excluded_roles');
delete_option('nav_disable_avatar');
delete_site_option('nav_disable_avatar');
delete_option('nav_disable_xmlrpc');
delete_site_option('nav_disable_xmlrpc');
delete_option('nav_disable_rest_api');
delete_site_option('nav_disable_rest_api');
delete_option('nav_deleted_comments_count');
delete_site_option('nav_deleted_comments_count');
delete_option('nav_auto_delete_spam');
delete_site_option('nav_auto_delete_spam');
delete_option('nav_last_spam_cleanup');
delete_site_option('nav_last_spam_cleanup');
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
delete_transient('wp_count_comments');
delete_site_transient('wp_count_comments');
delete_transient('nav_comments_count');
delete_site_transient('nav_comments_count');
delete_transient('nav_remaining_comments');
delete_site_transient('nav_remaining_comments');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('nav_auto_delete_spam_event');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

