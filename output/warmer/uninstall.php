<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('warmer-page-timeout');
delete_site_option('warmer-page-timeout');
delete_option('warmer-server-timeout');
delete_site_option('warmer-server-timeout');
delete_option('warmer-request-delay');
delete_site_option('warmer-request-delay');
delete_option('warmer-media-urls');
delete_site_option('warmer-media-urls');
delete_option('warmer_show_welcome');
delete_site_option('warmer_show_welcome');
delete_option('warmer-automation-schedule');
delete_site_option('warmer-automation-schedule');
delete_option('warmer-cache-update-warm');
delete_site_option('warmer-cache-update-warm');
delete_option('warmer-post-update-warm');
delete_site_option('warmer-post-update-warm');
delete_option('warmer-webhook-enabled');
delete_site_option('warmer-webhook-enabled');
delete_option('warmer_webhook_secret');
delete_site_option('warmer_webhook_secret');
delete_option('warmer-cli-enabled');
delete_site_option('warmer-cli-enabled');
delete_option('warmer-posts-urls');
delete_site_option('warmer-posts-urls');
delete_option('warmer-pages-urls');
delete_site_option('warmer-pages-urls');
delete_option('warmer-category-urls');
delete_site_option('warmer-category-urls');
delete_option('warmer-tag-urls');
delete_site_option('warmer-tag-urls');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-urls' ) );
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
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('warmer_cache_warming_cron');
wp_clear_scheduled_hook('warmer_scheduled_crawl');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

