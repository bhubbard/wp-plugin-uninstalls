<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_main_nav');
delete_site_option('hide_main_nav');
delete_option('hide_site_name');
delete_site_option('hide_site_name');
delete_option('hide_login_signup');
delete_site_option('hide_login_signup');
delete_option('hide_visit_random');
delete_site_option('hide_visit_random');
delete_option('scroll_with_pages');
delete_site_option('scroll_with_pages');
delete_option('add_wp_pages');
delete_site_option('add_wp_pages');
delete_option('add_bp_components');
delete_site_option('add_bp_components');
delete_option('page_link_dropdown');
delete_site_option('page_link_dropdown');
delete_option('bp_community_links');
delete_site_option('bp_community_links');
delete_option('list_pages_dropdown');
delete_site_option('list_pages_dropdown');
delete_option('main_background_color');
delete_site_option('main_background_color');
delete_option('sub_background_color');
delete_site_option('sub_background_color');
delete_option('main_text_color');
delete_site_option('main_text_color');
delete_option('link_hover_color');
delete_site_option('link_hover_color');
delete_option('nav_back_color');
delete_site_option('nav_back_color');
delete_option('sub_item_width');
delete_site_option('sub_item_width');
delete_option('main_item_padding');
delete_site_option('main_item_padding');
delete_option('menu_border_color');
delete_site_option('menu_border_color');
delete_option('overall_navbar_width');
delete_site_option('overall_navbar_width');
delete_option('overall_item_height');
delete_site_option('overall_item_height');
delete_option('submenu_top_margin');
delete_site_option('submenu_top_margin');
delete_option('navbar_vertical_offset');
delete_site_option('navbar_vertical_offset');
delete_option('navbar_horizontal_offset');
delete_site_option('navbar_horizontal_offset');
delete_option('item_font_family');
delete_site_option('item_font_family');
delete_option('item_font_size');
delete_site_option('item_font_size');
delete_option('item_font_style');
delete_site_option('item_font_style');
delete_option('item_font_weight');
delete_site_option('item_font_weight');
delete_option('bp-disable-forum-directory');
delete_site_option('bp-disable-forum-directory');

