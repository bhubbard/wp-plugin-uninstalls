<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('OGC_resolved');
delete_site_option('OGC_resolved');
delete_option('OGC_options');
delete_site_option('OGC_options');
delete_option('OGC_avatarUsedSizes');
delete_site_option('OGC_avatarUsedSizes');
delete_option('OGC_apacheConfig');
delete_site_option('OGC_apacheConfig');

// Clear Cron Jobs
wp_clear_scheduled_hook('OGC_CronEvent');

