<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notifizzy_token');
delete_site_option('notifizzy_token');
delete_option('notifizzy_entries');
delete_site_option('notifizzy_entries');
delete_option('notifizzy_log');
delete_site_option('notifizzy_log');
delete_option('notifizzy_response1');
delete_site_option('notifizzy_response1');
delete_option('notifizzy_response');
delete_site_option('notifizzy_response');

// Clear Cron Jobs
wp_clear_scheduled_hook('notifizzy_cron');

