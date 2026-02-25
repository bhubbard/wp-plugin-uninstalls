<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpephpcompat_is_wptide');
delete_site_option('wpephpcompat_is_wptide');
delete_option('wpephpcompat.test_version');
delete_site_option('wpephpcompat.test_version');
delete_option('wpephpcompat.only_active');
delete_site_option('wpephpcompat.only_active');
delete_option('wpephpcompat.scan_results');
delete_site_option('wpephpcompat.scan_results');
delete_option('wpephpcompat.lock');
delete_site_option('wpephpcompat.lock');
delete_option('wpephpcompat.status');
delete_site_option('wpephpcompat.status');
delete_option('wpephpcompat.numdirs');
delete_site_option('wpephpcompat.numdirs');
delete_option('wpephpcompat.show_notice');
delete_site_option('wpephpcompat.show_notice');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpephpcompat_start_test_cron');

