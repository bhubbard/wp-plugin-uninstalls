<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpsm_status');
delete_site_option('bpsm_status');
delete_option('bpsm_options');
delete_site_option('bpsm_options');

// Clear Cron Jobs
wp_clear_scheduled_hook('bpsm_build_cron');
wp_clear_scheduled_hook('bpsm_wp_cron');

