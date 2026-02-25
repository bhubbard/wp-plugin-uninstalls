<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bookling_website');
delete_site_option('bookling_website');
delete_option('bookonline_width');
delete_site_option('bookonline_width');
delete_option('bookonline_height');
delete_site_option('bookonline_height');
delete_option('bookonline_alignment');
delete_site_option('bookonline_alignment');

