<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('visitor_analytics_io');
delete_site_option('visitor_analytics_io');
delete_option('visitor_analytics_migration_done');
delete_site_option('visitor_analytics_migration_done');
delete_option('visitor_analytics_site_id');
delete_site_option('visitor_analytics_site_id');
delete_option('visitor_analytics_version');
delete_site_option('visitor_analytics_version');
delete_option('visitor_analytics_io_iframe');
delete_site_option('visitor_analytics_io_iframe');

