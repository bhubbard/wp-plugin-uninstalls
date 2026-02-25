<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adbreach_code');
delete_site_option('adbreach_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('adbreach_cronjob');

