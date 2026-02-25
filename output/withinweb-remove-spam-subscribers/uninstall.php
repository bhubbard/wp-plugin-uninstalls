<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('withinweb_wwrs_cron_array');
delete_site_option('withinweb_wwrs_cron_array');

// Clear Cron Jobs
wp_clear_scheduled_hook('withinweb_wwrs_cron_hook');

