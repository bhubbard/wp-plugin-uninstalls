<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edd_use_php_sessions');
delete_site_option('edd_use_php_sessions');
delete_option('sw_data_consent');
delete_site_option('sw_data_consent');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_session_garbage_collection');

