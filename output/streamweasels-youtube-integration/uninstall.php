<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('swyi_options');
delete_site_option('swyi_options');
delete_option('swyi_options_wall');
delete_site_option('swyi_options_wall');
delete_option('swyi_options_showcase');
delete_site_option('swyi_options_showcase');
delete_option('swyi_options_feature');
delete_site_option('swyi_options_feature');
delete_option('swyi_options_player');
delete_site_option('swyi_options_player');
delete_option('swyi_options_status');
delete_site_option('swyi_options_status');
delete_option('swyi_translations');
delete_site_option('swyi_translations');
delete_option('swyi_debug_log');
delete_site_option('swyi_debug_log');
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
delete_transient('swyi_notice_closed5');
delete_site_transient('swyi_notice_closed5');
delete_transient('swyi_video_cache');
delete_site_transient('swyi_video_cache');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('swyi_cron');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

