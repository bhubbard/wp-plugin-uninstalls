<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('golala_email_sender_options');
delete_site_option('golala_email_sender_options');

// Delete Transients
delete_transient('golala_email_sender_activated');
delete_site_transient('golala_email_sender_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('golala_email_sender_daily_check');

