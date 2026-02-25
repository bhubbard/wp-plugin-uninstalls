<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('migrated_to_version');
delete_site_option('migrated_to_version');
delete_option('srs_pageViews_count');
delete_site_option('srs_pageViews_count');
delete_option('srs_visitors_count');
delete_site_option('srs_visitors_count');
delete_option('srs_update_ran');
delete_site_option('srs_update_ran');
delete_option('srs_simple_hits_counter_version');
delete_site_option('srs_simple_hits_counter_version');
delete_option('srs_pageViews_number_format_count');
delete_site_option('srs_pageViews_number_format_count');

