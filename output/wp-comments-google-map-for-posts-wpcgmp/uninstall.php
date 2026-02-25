<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcgmp_gmaps_api');
delete_site_option('wpcgmp_gmaps_api');
delete_option('wpcgmp_ipinfodb_api');
delete_site_option('wpcgmp_ipinfodb_api');
delete_option('wpcgmp_marker');
delete_site_option('wpcgmp_marker');
delete_option('wpcgmp_count_marker');
delete_site_option('wpcgmp_count_marker');
delete_option('wpcgmp_zoom');
delete_site_option('wpcgmp_zoom');
delete_option('wpcgmp_coord_lat');
delete_site_option('wpcgmp_coord_lat');
delete_option('wpcgmp_coord_lon');
delete_site_option('wpcgmp_coord_lon');
delete_option('wpcgmp_map_display');
delete_site_option('wpcgmp_map_display');
delete_option('wpcgmp_no_comment_text');
delete_site_option('wpcgmp_no_comment_text');
delete_option('wpcgmp_map_width');
delete_site_option('wpcgmp_map_width');
delete_option('wpcgmp_map_height');
delete_site_option('wpcgmp_map_height');
delete_option('post_category');
delete_site_option('post_category');

