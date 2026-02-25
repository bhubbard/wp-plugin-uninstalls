<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin_instant_search_settings_polyplugins');
delete_site_option('admin_instant_search_settings_polyplugins');
delete_option('admin_instant_search_notice_dismissed_polyplugins');
delete_site_option('admin_instant_search_notice_dismissed_polyplugins');
delete_option('admin_instant_search_version_polyplugins');
delete_site_option('admin_instant_search_version_polyplugins');
delete_option('admin_instant_search_indexes_polyplugins');
delete_site_option('admin_instant_search_indexes_polyplugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('admin_instant_search_background_worker');

