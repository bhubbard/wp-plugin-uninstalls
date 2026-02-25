<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kindpdfg_galleries');
delete_site_option('kindpdfg_galleries');
delete_option('kindpdfg_current_gallery_id');
delete_site_option('kindpdfg_current_gallery_id');
delete_option('kindpdfg_version');
delete_site_option('kindpdfg_version');
delete_option('kindpdfg_seed_rule_checked');
delete_site_option('kindpdfg_seed_rule_checked');
delete_option('kindpdfg_license_data');
delete_site_option('kindpdfg_license_data');
delete_option('kindpdfg_license_key');
delete_site_option('kindpdfg_license_key');
delete_option('kindpdfg_data');
delete_site_option('kindpdfg_data');
delete_option('kindpdfg_gallery_settings');
delete_site_option('kindpdfg_gallery_settings');
delete_option('kindpdfg_settings');
delete_site_option('kindpdfg_settings');
delete_option('kindpdfg_galleries_backup');
delete_site_option('kindpdfg_galleries_backup');
delete_option('kindpdfg_analytics');
delete_site_option('kindpdfg_analytics');
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
delete_transient('kindpdfg_license_changed');
delete_site_transient('kindpdfg_license_changed');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('kindpdfg_activation_redirect');
delete_site_transient('kindpdfg_activation_redirect');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

