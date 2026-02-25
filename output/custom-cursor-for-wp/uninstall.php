<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('status_ccwp');
delete_site_option('status_ccwp');
delete_option('cursor_type_ccwp');
delete_site_option('cursor_type_ccwp');
delete_option('ccwp_cursor_color');
delete_site_option('ccwp_cursor_color');
delete_option('ccwp_show_default_cursor');
delete_site_option('ccwp_show_default_cursor');
delete_option('ccwp_cursor_size');
delete_site_option('ccwp_cursor_size');
delete_option('ccwp_front_cursor_type');
delete_site_option('ccwp_front_cursor_type');
delete_option('cursor-image-url');
delete_site_option('cursor-image-url');

