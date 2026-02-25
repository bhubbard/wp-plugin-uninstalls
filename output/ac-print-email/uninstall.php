<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acpe_enable_posts');
delete_site_option('acpe_enable_posts');
delete_option('acpe_enable_pages');
delete_site_option('acpe_enable_pages');
delete_option('acpe_enable_category');
delete_site_option('acpe_enable_category');
delete_option('acpe_enable_tag');
delete_site_option('acpe_enable_tag');
delete_option('acpe_position');
delete_site_option('acpe_position');
delete_option('acpe_providers');
delete_site_option('acpe_providers');
delete_option('acpe_icon_style');
delete_site_option('acpe_icon_style');
delete_option('acpe_display_mode');
delete_site_option('acpe_display_mode');
delete_option('acpe_text_color');
delete_site_option('acpe_text_color');
delete_option('acpe_menu_bg');
delete_site_option('acpe_menu_bg');
delete_option('acpe_placement');
delete_site_option('acpe_placement');

