<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vs_options');
delete_site_option('vs_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('vs_cron');

