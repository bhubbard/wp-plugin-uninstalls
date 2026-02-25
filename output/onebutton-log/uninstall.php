<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('onebutton_ai_mode');
delete_site_option('onebutton_ai_mode');
delete_option('onebutton_last_error');
delete_site_option('onebutton_last_error');
delete_option('onebutton_bot_visits');
delete_site_option('onebutton_bot_visits');
delete_option('onebutton_auto_cleanup');
delete_site_option('onebutton_auto_cleanup');
delete_option('onebutton_log_file_path');
delete_site_option('onebutton_log_file_path');

// Clear Cron Jobs
wp_clear_scheduled_hook('onebutton_auto_cleanup');

