<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gl_scrollbar_show');
delete_site_option('gl_scrollbar_show');
delete_option('gl_scrollbar_width');
delete_site_option('gl_scrollbar_width');
delete_option('gl_scrollbar_bgcolor');
delete_site_option('gl_scrollbar_bgcolor');
delete_option('gl_scrollbar_cursor_color');
delete_site_option('gl_scrollbar_cursor_color');
delete_option('gl_scrollbar_cursor_radius');
delete_site_option('gl_scrollbar_cursor_radius');
delete_option('gl_scrollbar_speed');
delete_site_option('gl_scrollbar_speed');
delete_option('gl_scrollbar_opacity');
delete_site_option('gl_scrollbar_opacity');
delete_option('gl_scrollbar_autohide');
delete_site_option('gl_scrollbar_autohide');
delete_option('gl_scrollbar_autohide_delay');
delete_site_option('gl_scrollbar_autohide_delay');
delete_option('gl_scrollbar_show_admin');
delete_site_option('gl_scrollbar_show_admin');
delete_option('gl_scrollbar_force_default');
delete_site_option('gl_scrollbar_force_default');

