<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('themepoints_scrollbar_colors');
delete_site_option('themepoints_scrollbar_colors');
delete_option('themepoints_scrollbar_width');
delete_site_option('themepoints_scrollbar_width');
delete_option('themepoints_scrollbar_radius');
delete_site_option('themepoints_scrollbar_radius');
delete_option('themepoints_scrollbar_border');
delete_site_option('themepoints_scrollbar_border');
delete_option('themepoints_scrollbar_speed');
delete_site_option('themepoints_scrollbar_speed');
delete_option('themepoints_scrollbar_autohide');
delete_site_option('themepoints_scrollbar_autohide');

