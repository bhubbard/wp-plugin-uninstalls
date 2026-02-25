<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayg_version');
delete_site_option('ayg_version');
delete_option('ayg_gallery_settings');
delete_site_option('ayg_gallery_settings');
delete_option('ayg_strings_settings');
delete_site_option('ayg_strings_settings');
delete_option('ayg_player_settings');
delete_site_option('ayg_player_settings');
delete_option('ayg_livestream_settings');
delete_site_option('ayg_livestream_settings');
delete_option('ayg_privacy_settings');
delete_site_option('ayg_privacy_settings');
delete_option('ayg_general_settings');
delete_site_option('ayg_general_settings');
delete_option('ayg_transient_keys');
delete_site_option('ayg_transient_keys');
delete_option('ayg_seo_settings');
delete_site_option('ayg_seo_settings');
delete_option('ayg_gallery_page_ids');
delete_site_option('ayg_gallery_page_ids');
delete_option('ayg_channel_ids');
delete_site_option('ayg_channel_ids');
delete_option('ayg_playlist_ids');
delete_site_option('ayg_playlist_ids');
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
wp_clear_scheduled_hook('ayg_schedule_weekly');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

