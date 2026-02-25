<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ws_custom_scrollbar_show');
delete_site_option('ws_custom_scrollbar_show');
delete_option('ws_custom_scrollbar_width');
delete_site_option('ws_custom_scrollbar_width');
delete_option('ws_custom_scrollbar_bgcolor');
delete_site_option('ws_custom_scrollbar_bgcolor');
delete_option('ws_custom_scrollbar_border_color');
delete_site_option('ws_custom_scrollbar_border_color');
delete_option('ws_custom_scrollbar_border_radius');
delete_site_option('ws_custom_scrollbar_border_radius');
delete_option('ws_custom_scrollbar_speed');
delete_site_option('ws_custom_scrollbar_speed');
delete_option('ws_custom_scrollbar_opacity');
delete_site_option('ws_custom_scrollbar_opacity');
delete_option('ws_custom_scrollbar_autohide');
delete_site_option('ws_custom_scrollbar_autohide');
delete_option('ws_custom_scrollbar_hidecursordelay');
delete_site_option('ws_custom_scrollbar_hidecursordelay');

