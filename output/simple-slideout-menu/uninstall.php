<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simsm_hide_desktop');
delete_site_option('simsm_hide_desktop');
delete_option('simsm_hide_tablet');
delete_site_option('simsm_hide_tablet');
delete_option('simsm_hide_mobile');
delete_site_option('simsm_hide_mobile');
delete_option('simsm_panel_bg');
delete_site_option('simsm_panel_bg');
delete_option('simsm_panel_shadow_color');
delete_site_option('simsm_panel_shadow_color');
delete_option('simsm_close_icon_font_size');
delete_site_option('simsm_close_icon_font_size');
delete_option('simsm_close_icon_hover_color');
delete_site_option('simsm_close_icon_hover_color');
delete_option('simsm_close_icon_color');
delete_site_option('simsm_close_icon_color');
delete_option('simsm_panel_width');
delete_site_option('simsm_panel_width');
delete_option('simsm_hamburger_icon_font_size');
delete_site_option('simsm_hamburger_icon_font_size');
delete_option('simsm_hamburger_icon_hover_color');
delete_site_option('simsm_hamburger_icon_hover_color');
delete_option('simsm_hamburger_icon_color');
delete_site_option('simsm_hamburger_icon_color');
delete_option('simsm_menu_link_color');
delete_site_option('simsm_menu_link_color');
delete_option('simsm_menu_link_hover_color');
delete_site_option('simsm_menu_link_hover_color');
delete_option('simsm_menu_link_font_size');
delete_site_option('simsm_menu_link_font_size');
delete_option('simsm_menu_link_text_decoration');
delete_site_option('simsm_menu_link_text_decoration');
delete_option('simsm_menu_link_text_transformation');
delete_site_option('simsm_menu_link_text_transformation');
delete_option('simsm_menu_link_font_weight');
delete_site_option('simsm_menu_link_font_weight');

