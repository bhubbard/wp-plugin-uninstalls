<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('okcrmc_options');
delete_site_option('okcrmc_options');
delete_option('content_reminder_options');
delete_site_option('content_reminder_options');
delete_option('cur_options');
delete_site_option('cur_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('okcrmc_send_email_notification');

