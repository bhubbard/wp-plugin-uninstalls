<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpledc_logo');
delete_site_option('simpledc_logo');
delete_option('simpledc_sidebar_bg');
delete_site_option('simpledc_sidebar_bg');
delete_option('simpledc_active_menu_bg');
delete_site_option('simpledc_active_menu_bg');
delete_option('simpledc_menu_text_color');
delete_site_option('simpledc_menu_text_color');
delete_option('simpledc_menu_hover_and_submenu_bg');
delete_site_option('simpledc_menu_hover_and_submenu_bg');
delete_option('simpledc_active_menu_text_color');
delete_site_option('simpledc_active_menu_text_color');
delete_option('simpledc_content_bg');
delete_site_option('simpledc_content_bg');

