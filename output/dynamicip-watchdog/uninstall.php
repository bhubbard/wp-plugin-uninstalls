<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ts_dipwd_notification_email');
delete_site_option('ts_dipwd_notification_email');
delete_option('ts_dipwd_notification_notes');
delete_site_option('ts_dipwd_notification_notes');
delete_option('ts_dipwd_previous_ip');
delete_site_option('ts_dipwd_previous_ip');
delete_option('ts_dipwd_settings');
delete_site_option('ts_dipwd_settings');

