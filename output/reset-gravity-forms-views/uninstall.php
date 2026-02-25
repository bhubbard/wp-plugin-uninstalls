<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wh_gf_views_cron_settings');
delete_site_option('wh_gf_views_cron_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('wh_gf_views_cron_jobs');

