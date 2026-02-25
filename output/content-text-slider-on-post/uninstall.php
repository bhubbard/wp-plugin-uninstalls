<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctsop_height_display_length_s1');
delete_site_option('ctsop_height_display_length_s1');
delete_option('ctsop_height_display_length_s2');
delete_site_option('ctsop_height_display_length_s2');
delete_option('ctsop_height_display_length_s3');
delete_site_option('ctsop_height_display_length_s3');
delete_option('ctsop_speed');
delete_site_option('ctsop_speed');
delete_option('ctsop_waitseconds');
delete_site_option('ctsop_waitseconds');

