<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linktrade_notification_email');
delete_site_option('linktrade_notification_email');
delete_option('linktrade_email_notifications');
delete_site_option('linktrade_email_notifications');
delete_option('linktrade_reminder_days');
delete_site_option('linktrade_reminder_days');
delete_option('linktrade_language');
delete_site_option('linktrade_language');
delete_option('linktrade_version');
delete_site_option('linktrade_version');
delete_option('linktrade_install_date');
delete_site_option('linktrade_install_date');
delete_option('linktrade_batch_size');
delete_site_option('linktrade_batch_size');
delete_option('linktrade_request_delay');
delete_site_option('linktrade_request_delay');

// Clear Cron Jobs
wp_clear_scheduled_hook('linktrade_check_links');
wp_clear_scheduled_hook('linktrade_check_reminders');

