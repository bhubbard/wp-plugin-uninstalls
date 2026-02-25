<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pepg_saved_shortcodes');
delete_site_option('pepg_saved_shortcodes');
delete_option('pepg_stream_links');
delete_site_option('pepg_stream_links');
delete_option('pepg_display_options');
delete_site_option('pepg_display_options');
delete_option('pepg_urls');
delete_site_option('pepg_urls');
delete_option('pepg_url_names');
delete_site_option('pepg_url_names');
delete_option('pepg_m3u_urls');
delete_site_option('pepg_m3u_urls');
delete_option('pepg_m3u_url_names');
delete_site_option('pepg_m3u_url_names');
delete_option('pepg_sync_interval');
delete_site_option('pepg_sync_interval');
delete_option('pepg_playback_options');
delete_site_option('pepg_playback_options');
delete_option('pepg_debug_sync_log');
delete_site_option('pepg_debug_sync_log');
delete_option('pepg_license_key');
delete_site_option('pepg_license_key');
delete_option('pepg_license_status');
delete_site_option('pepg_license_status');
delete_option('pepg_license_error');
delete_site_option('pepg_license_error');
delete_option('pepg_activation_date');
delete_site_option('pepg_activation_date');
delete_option('pepg_notice_dismiss_period');
delete_site_option('pepg_notice_dismiss_period');
delete_option('pepg_notice_dismissed_permanently');
delete_site_option('pepg_notice_dismissed_permanently');

// Clear Cron Jobs
wp_clear_scheduled_hook('pepg_daily_event');

