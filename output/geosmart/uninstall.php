<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('geosmart-options');
delete_site_option('geosmart-options');

// Clear Cron Jobs
wp_clear_scheduled_hook('geosmart_database_clean');

