<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('commonwp_data');
delete_site_option('commonwp_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('for_recently_upgraded_core');

