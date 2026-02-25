<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('station_id');
delete_site_option('station_id');
delete_option('autoplay');
delete_site_option('autoplay');
delete_option('player');
delete_site_option('player');
delete_option('default_image');
delete_site_option('default_image');
delete_option('navigation');
delete_site_option('navigation');
delete_option('container');
delete_site_option('container');

