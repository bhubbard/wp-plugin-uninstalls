<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fitbituserid');
delete_site_option('fitbituserid');
delete_option('fitbitcliid');
delete_site_option('fitbitcliid');
delete_option('fitbitsecret');
delete_site_option('fitbitsecret');
delete_option('fitbitcallback');
delete_site_option('fitbitcallback');
delete_option('fitbitaccesstoken');
delete_site_option('fitbitaccesstoken');
delete_option('fitbitrefreshtoken');
delete_site_option('fitbitrefreshtoken');

// Clear Cron Jobs
wp_clear_scheduled_hook('gfsc_grab_steps');
wp_clear_scheduled_hook('gfsc_use_refresh_token');

