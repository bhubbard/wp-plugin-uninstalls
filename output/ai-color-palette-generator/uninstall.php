<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('red8_ai_color_palette_option');
delete_site_option('red8_ai_color_palette_option');
delete_option('red8_ai_color_palette_settings_key_saved_date');
delete_site_option('red8_ai_color_palette_settings_key_saved_date');

// Clear Cron Jobs
wp_clear_scheduled_hook('red8_schedule_expired_key_hook');

