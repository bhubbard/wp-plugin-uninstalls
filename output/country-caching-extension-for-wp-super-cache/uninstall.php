<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CCWPSC_VERSION');
delete_site_option('CCWPSC_VERSION');
delete_option('CCWPSC_VERSION_UPDATE');
delete_site_option('CCWPSC_VERSION_UPDATE');
delete_option('ccwpsc_caching_options');
delete_site_option('ccwpsc_caching_options');
delete_option('cc_maxmind_status');
delete_site_option('cc_maxmind_status');

// Clear Cron Jobs
wp_clear_scheduled_hook('country_caching_check_wpsc');

