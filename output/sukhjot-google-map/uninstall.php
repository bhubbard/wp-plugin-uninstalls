<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmap_key');
delete_site_option('gmap_key');
delete_option('gmap_link_txt');
delete_site_option('gmap_link_txt');
delete_option('gmap_width');
delete_site_option('gmap_width');
delete_option('gmap_height');
delete_site_option('gmap_height');
delete_option('gmap_type_view');
delete_site_option('gmap_type_view');
delete_option('gmap_zoom');
delete_site_option('gmap_zoom');

