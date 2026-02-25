<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbd_str');
delete_site_option('cbd_str');
delete_option('cbd_left_right');
delete_site_option('cbd_left_right');
delete_option('cbd_top_bottom');
delete_site_option('cbd_top_bottom');
delete_option('cbd_left_right_px');
delete_site_option('cbd_left_right_px');
delete_option('cbd_top_bottom_px');
delete_site_option('cbd_top_bottom_px');

