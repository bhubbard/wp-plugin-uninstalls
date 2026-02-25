<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('popup_window_width');
delete_site_option('popup_window_width');
delete_option('popup_window_height');
delete_site_option('popup_window_height');
delete_option('popup_window_top');
delete_site_option('popup_window_top');
delete_option('popup_window_left');
delete_site_option('popup_window_left');
delete_option('popup_scrollbar');
delete_site_option('popup_scrollbar');
delete_option('popup_window_toolbar');
delete_site_option('popup_window_toolbar');
delete_option('popup_window_location');
delete_site_option('popup_window_location');

