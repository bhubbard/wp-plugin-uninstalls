<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mtfree_mouse_trail_color');
delete_site_option('mtfree_mouse_trail_color');
delete_option('mtfree_mouse_trail_enabled');
delete_site_option('mtfree_mouse_trail_enabled');

