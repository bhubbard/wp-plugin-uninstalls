<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ccfwp_settings');
delete_site_option('ccfwp_settings');
delete_option('ccwp_last_altcron_update');
delete_site_option('ccwp_last_altcron_update');
delete_option('ccfwp_current_post');
delete_site_option('ccfwp_current_post');
delete_option('ccfwp_scan_urls');
delete_site_option('ccfwp_scan_urls');
delete_option('ccfwp_current_term');
delete_site_option('ccfwp_current_term');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('ccfwp_generate_crtlcss');

