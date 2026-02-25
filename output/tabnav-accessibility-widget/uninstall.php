<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tabnav_widget_enabled');
delete_site_option('tabnav_widget_enabled');
delete_option('tabnav_widget_language');
delete_site_option('tabnav_widget_language');
delete_option('tabnav_widget_color');
delete_site_option('tabnav_widget_color');
delete_option('tabnav_button_color');
delete_site_option('tabnav_button_color');
delete_option('tabnav_button_size');
delete_site_option('tabnav_button_size');
delete_option('tabnav_widget_size');
delete_site_option('tabnav_widget_size');
delete_option('tabnav_widget_location');
delete_site_option('tabnav_widget_location');
delete_option('tabnav_widget_color_enabled');
delete_site_option('tabnav_widget_color_enabled');
delete_option('tabnav_button_color_enabled');
delete_site_option('tabnav_button_color_enabled');

