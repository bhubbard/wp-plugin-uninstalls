<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpab_background');
delete_site_option('wpab_background');
delete_option('wpab_font_color');
delete_site_option('wpab_font_color');
delete_option('wpab_background_hover');
delete_site_option('wpab_background_hover');
delete_option('wpab_font_color_hover');
delete_site_option('wpab_font_color_hover');

