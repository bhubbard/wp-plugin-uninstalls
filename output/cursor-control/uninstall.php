<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cursor_control_custom_defaultcursor_image_upload');
delete_site_option('cursor_control_custom_defaultcursor_image_upload');
delete_option('cursor_control_x_offset');
delete_site_option('cursor_control_x_offset');
delete_option('cursor_control_y_offset');
delete_site_option('cursor_control_y_offset');

