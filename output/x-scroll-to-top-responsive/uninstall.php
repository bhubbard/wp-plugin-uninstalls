<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('x_scroll_color');
delete_site_option('x_scroll_color');
delete_option('x_scroll_size');
delete_site_option('x_scroll_size');
delete_option('x_field_bg');
delete_site_option('x_field_bg');
delete_option('x_scroll_position');
delete_site_option('x_scroll_position');
delete_option('x_scroll_border');
delete_site_option('x_scroll_border');
delete_option('xstr_option');
delete_site_option('xstr_option');

