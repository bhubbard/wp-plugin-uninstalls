<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fnmm_settings');
delete_site_option('fnmm_settings');
delete_option('fnmm_custom_css');
delete_site_option('fnmm_custom_css');
delete_option('fnmm_menu_font_color');
delete_site_option('fnmm_menu_font_color');
delete_option('fnmm_options');
delete_site_option('fnmm_options');

