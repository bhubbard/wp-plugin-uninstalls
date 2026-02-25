<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stock_notification_threshold');
delete_site_option('stock_notification_threshold');
delete_option('stock_notification_email_templates');
delete_site_option('stock_notification_email_templates');
delete_option('stock_availability_alert_installed');
delete_site_option('stock_availability_alert_installed');
delete_option('stock_availability_alert_version');
delete_site_option('stock_availability_alert_version');

