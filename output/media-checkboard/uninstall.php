<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('checkerboard_color1');
delete_site_option('checkerboard_color1');
delete_option('checkerboard_color2');
delete_site_option('checkerboard_color2');
delete_option('checkerboard_size');
delete_site_option('checkerboard_size');

