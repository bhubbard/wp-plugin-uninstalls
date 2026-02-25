<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('draugiem_config');
delete_site_option('draugiem_config');

// Clear Cron Jobs
wp_clear_scheduled_hook('draugiem_cron');

