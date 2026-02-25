<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookiemate_pause_cookie_banner');
delete_site_option('cookiemate_pause_cookie_banner');
delete_option('cookiemate_selected_template_length');
delete_site_option('cookiemate_selected_template_length');
delete_option('cookiemate_selected_template');
delete_site_option('cookiemate_selected_template');
delete_option('cookiemate_message');
delete_site_option('cookiemate_message');
delete_option('cookiemate_button_text');
delete_site_option('cookiemate_button_text');
delete_option('cookiemate_close_option');
delete_site_option('cookiemate_close_option');
delete_option('cookiemate_banner_bg');
delete_site_option('cookiemate_banner_bg');
delete_option('cookiemate_banner_text');
delete_site_option('cookiemate_banner_text');
delete_option('cookiemate_banner_link');
delete_site_option('cookiemate_banner_link');
delete_option('cookiemate_btn_bg');
delete_site_option('cookiemate_btn_bg');
delete_option('cookiemate_btn_text');
delete_site_option('cookiemate_btn_text');
delete_option('cookiemate_remove_cookie_settings');
delete_site_option('cookiemate_remove_cookie_settings');
delete_option('cookiemate_widgets_toggle');
delete_site_option('cookiemate_widgets_toggle');
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
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

