<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hover_text');
delete_site_option('hover_text');
delete_option('button_width');
delete_site_option('button_width');
delete_option('button_height');
delete_site_option('button_height');
delete_option('bg_color');
delete_site_option('bg_color');
delete_option('bg_color_hover');
delete_site_option('bg_color_hover');
delete_option('border_radius');
delete_site_option('border_radius');
delete_option('icon_image');
delete_site_option('icon_image');
delete_option('icon_color');
delete_site_option('icon_color');
delete_option('icon_hover_color');
delete_site_option('icon_hover_color');
delete_option('button_alignment');
delete_site_option('button_alignment');

