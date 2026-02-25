<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aurora_heatmap_option');
delete_site_option('aurora_heatmap_option');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');

// Clear Cron Jobs
wp_clear_scheduled_hook('aurora_heatmap_cron_daily');

