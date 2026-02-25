<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('surge_installed');
delete_site_option('surge_installed');

// Clear Cron Jobs
wp_clear_scheduled_hook('surge_delete_expired');

