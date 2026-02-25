<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ddsp_allowed_post_types');
delete_site_option('ddsp_allowed_post_types');
delete_option('ddsp_allowed_taxonomies');
delete_site_option('ddsp_allowed_taxonomies');
delete_option('ddsp_enable_custom_search');
delete_site_option('ddsp_enable_custom_search');
delete_option('ddsp_search_layout');
delete_site_option('ddsp_search_layout');
delete_option('ddsp_font_color');
delete_site_option('ddsp_font_color');
delete_option('ddsp_button_bg_color');
delete_site_option('ddsp_button_bg_color');
delete_option('ddsp_grid_bg_color');
delete_site_option('ddsp_grid_bg_color');
delete_option('ddsp_button_hover_color');
delete_site_option('ddsp_button_hover_color');
delete_option('ddsp_button_text_color');
delete_site_option('ddsp_button_text_color');
delete_option('ddsp_button_hover_text_color');
delete_site_option('ddsp_button_hover_text_color');
delete_option('ddsp_search_gutenberg_templates');
delete_site_option('ddsp_search_gutenberg_templates');

