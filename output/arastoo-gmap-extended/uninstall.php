<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arastoo_gmap_api');
delete_site_option('arastoo_gmap_api');
delete_option('arastoo_gmap_content');
delete_site_option('arastoo_gmap_content');
delete_option('arastoo_gmap_lat');
delete_site_option('arastoo_gmap_lat');
delete_option('arastoo_gmap_long');
delete_site_option('arastoo_gmap_long');
delete_option('arastoo_gmap_icon');
delete_site_option('arastoo_gmap_icon');
delete_option('arastoo_gmap_height');
delete_site_option('arastoo_gmap_height');

