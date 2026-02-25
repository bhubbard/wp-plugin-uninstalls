<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crs_rss_url');
delete_site_option('crs_rss_url');
delete_option('crs_display_width');
delete_site_option('crs_display_width');
delete_option('crs_display_count');
delete_site_option('crs_display_count');
delete_option('crs_record_height');
delete_site_option('crs_record_height');
delete_option('crs_speed');
delete_site_option('crs_speed');
delete_option('crs_waitseconds');
delete_site_option('crs_waitseconds');
delete_option('crs_title');
delete_site_option('crs_title');

