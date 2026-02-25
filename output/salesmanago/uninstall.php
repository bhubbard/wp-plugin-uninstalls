<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('salesmanago_cron');
delete_site_option('salesmanago_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('salesmanago_cron_event');

