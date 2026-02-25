<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccpigd_shared_thumbnails_type');
delete_site_option('ccpigd_shared_thumbnails_type');
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
delete_option('ccpigd_version');
delete_site_option('ccpigd_version');
delete_option('ccpigd_install_time');
delete_site_option('ccpigd_install_time');
delete_option('ccpigd_encryption_key');
delete_site_option('ccpigd_encryption_key');
delete_option('ccpigd_thumbnail_lifetime');
delete_site_option('ccpigd_thumbnail_lifetime');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('ccpigd_rating_notice_interval');
delete_site_transient('ccpigd_rating_notice_interval');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');
wp_clear_scheduled_hook('ccpigd_cron_fire');

