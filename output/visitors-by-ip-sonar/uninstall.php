<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vips_api_key');
delete_site_option('vips_api_key');
delete_option('vips_tracking_mode');
delete_site_option('vips_tracking_mode');
delete_option('vips_country_acl_enabled');
delete_site_option('vips_country_acl_enabled');
delete_option('vips_blocked_countries');
delete_site_option('vips_blocked_countries');
delete_option('vips_country_filter_mode');
delete_site_option('vips_country_filter_mode');
delete_option('vips_allow_bots');
delete_site_option('vips_allow_bots');
delete_option('vips_db_version');
delete_site_option('vips_db_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('vips_visitors_cleanup');

