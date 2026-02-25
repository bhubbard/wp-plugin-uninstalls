<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myoption');
delete_site_option('myoption');
delete_option('popup_window_width');
delete_site_option('popup_window_width');
delete_option('popup_window_height');
delete_site_option('popup_window_height');
delete_option('popup_window_date');
delete_site_option('popup_window_date');
delete_option('popup_window_image');
delete_site_option('popup_window_image');
delete_option('popup_window_fadeout');
delete_site_option('popup_window_fadeout');
delete_option('popup_window_link');
delete_site_option('popup_window_link');
delete_option('popup_window_target');
delete_site_option('popup_window_target');
delete_option('popup_window_color');
delete_site_option('popup_window_color');
delete_option('popup_window_radius');
delete_site_option('popup_window_radius');
delete_option('popup_window_border_w');
delete_site_option('popup_window_border_w');
delete_option('notification_text');
delete_site_option('notification_text');
delete_option('notification_width');
delete_site_option('notification_width');
delete_option('notification_height');
delete_site_option('notification_height');
delete_option('notification_date');
delete_site_option('notification_date');
delete_option('notification_fadeout');
delete_site_option('notification_fadeout');
delete_option('notification_bkg_color');
delete_site_option('notification_bkg_color');
delete_option('notification_font_color');
delete_site_option('notification_font_color');
delete_option('notification_radius');
delete_site_option('notification_radius');
delete_option('notification_margin');
delete_site_option('notification_margin');
delete_option('notification_close_color');
delete_site_option('notification_close_color');
delete_option('notification_position_top');
delete_site_option('notification_position_top');
delete_option('notification_position_right');
delete_site_option('notification_position_right');
delete_option('notification_position_left');
delete_site_option('notification_position_left');
delete_option('notification_position_bottom');
delete_site_option('notification_position_bottom');
delete_option('myselect');
delete_site_option('myselect');
delete_option('myselectout');
delete_site_option('myselectout');

