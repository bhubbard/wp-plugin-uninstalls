<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smnwcrpl_options');
delete_site_option('smnwcrpl_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('smnwcrpl_regenerate_product_lookup_table');

