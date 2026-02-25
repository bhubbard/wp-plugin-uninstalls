<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppinger_activated');
delete_site_option('ppinger_activated');
delete_option('ppinger_interval');
delete_site_option('ppinger_interval');
delete_option('ppinger_lastmessage');
delete_site_option('ppinger_lastmessage');

// Clear Cron Jobs
wp_clear_scheduled_hook('ppinger_cron');

