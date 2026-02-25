<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maintenancemode');
delete_site_option('maintenancemode');
delete_option('page_title');
delete_site_option('page_title');
delete_option('test-editor');
delete_site_option('test-editor');
delete_option('site_title_color');
delete_site_option('site_title_color');
delete_option('site_title_font_size');
delete_site_option('site_title_font_size');
delete_option('heading_color');
delete_site_option('heading_color');
delete_option('headingfont_size');
delete_site_option('headingfont_size');
delete_option('description_color');
delete_site_option('description_color');
delete_option('descriptionfont_size');
delete_site_option('descriptionfont_size');
delete_option('footer_text');
delete_site_option('footer_text');
delete_option('footer_text_color');
delete_site_option('footer_text_color');
delete_option('footer_textfont_size');
delete_site_option('footer_textfont_size');
delete_option('custom_css');
delete_site_option('custom_css');
delete_option('background_bodycss');
delete_site_option('background_bodycss');
delete_option('background_overlay_bodycss');
delete_site_option('background_overlay_bodycss');
delete_option('background_overlay_opc_bodycss');
delete_site_option('background_overlay_opc_bodycss');
delete_option('logo_width');
delete_site_option('logo_width');
delete_option('logo_height');
delete_site_option('logo_height');
delete_option('heading');
delete_site_option('heading');
delete_option('header_logo');
delete_site_option('header_logo');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('fontfamily');
delete_site_option('fontfamily');
delete_option('header_back');
delete_site_option('header_back');
delete_option('is_maintenance_mode');
delete_site_option('is_maintenance_mode');
delete_option('maintenance_mode_expire_time');
delete_site_option('maintenance_mode_expire_time');

