<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ha_option_name');
delete_site_option('ha_option_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('hello_adh_hook');

