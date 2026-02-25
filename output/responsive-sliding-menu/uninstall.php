<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsm_chosen_menu');
delete_site_option('rsm_chosen_menu');
delete_option('rsm_responsive_width');
delete_site_option('rsm_responsive_width');
delete_option('rsm_main_menu_transform');
delete_site_option('rsm_main_menu_transform');
delete_option('rsm_main_menu_size');
delete_site_option('rsm_main_menu_size');
delete_option('rsm_main_menu_color');
delete_site_option('rsm_main_menu_color');
delete_option('rsm_hover_menu_color');
delete_site_option('rsm_hover_menu_color');
delete_option('rsm_burger_menu_size');
delete_site_option('rsm_burger_menu_size');
delete_option('rsm_burger_menu_background');
delete_site_option('rsm_burger_menu_background');
delete_option('rsm_main_burger_color');
delete_site_option('rsm_main_burger_color');
delete_option('rsm_hover_burger_color');
delete_site_option('rsm_hover_burger_color');
delete_option('rsm_burger_menu_color');
delete_site_option('rsm_burger_menu_color');
delete_option('rsm_burger_icon');
delete_site_option('rsm_burger_icon');

