<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('email_content');
delete_site_option('email_content');

// Delete Transients
delete_transient('bulk_user_email');
delete_site_transient('bulk_user_email');
delete_transient('bulk_email_track');
delete_site_transient('bulk_email_track');

// Clear Cron Jobs
wp_clear_scheduled_hook('custom_send_email');

