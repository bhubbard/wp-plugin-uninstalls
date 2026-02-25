<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fluency_login_style');
delete_site_option('fluency_login_style');
delete_option('fluency_login_logo');
delete_site_option('fluency_login_logo');
delete_option('fluency_login_link');
delete_site_option('fluency_login_link');
delete_option('fluency_menu_logo');
delete_site_option('fluency_menu_logo');
delete_option('fluency_hidden_menu_logo');
delete_site_option('fluency_hidden_menu_logo');
delete_option('fluency_menu_width');
delete_site_option('fluency_menu_width');
delete_option('fluency_menu_position');
delete_site_option('fluency_menu_position');
delete_option('fluency_menu_icons');
delete_site_option('fluency_menu_icons');
delete_option('fluency_click_menus');
delete_site_option('fluency_click_menus');
delete_option('fluency_hot_keys');
delete_site_option('fluency_hot_keys');
delete_option('fluency_custom_color');
delete_site_option('fluency_custom_color');
delete_option('fluency_admin_drop_down');
delete_site_option('fluency_admin_drop_down');
delete_option('fluency_hide_menu');
delete_site_option('fluency_hide_menu');

