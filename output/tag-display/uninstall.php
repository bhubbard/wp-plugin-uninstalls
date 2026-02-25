<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s7n_tag_display_auto_display');
delete_site_option('s7n_tag_display_auto_display');
delete_option('s7n_tag_display_bg_color');
delete_site_option('s7n_tag_display_bg_color');
delete_option('s7n_tag_display_text_color');
delete_site_option('s7n_tag_display_text_color');
delete_option('s7n_tag_display_border_color');
delete_site_option('s7n_tag_display_border_color');
delete_option('s7n_tag_display_hover_bg_color');
delete_site_option('s7n_tag_display_hover_bg_color');
delete_option('s7n_tag_display_hover_text_color');
delete_site_option('s7n_tag_display_hover_text_color');
delete_option('s7n_tag_display_title');
delete_site_option('s7n_tag_display_title');
delete_option('s7n_tag_display_template');
delete_site_option('s7n_tag_display_template');
delete_option('s7n_tag_display_disable_wp_tags');
delete_site_option('s7n_tag_display_disable_wp_tags');
delete_option('s7n_tag_display_show_in_posts');
delete_site_option('s7n_tag_display_show_in_posts');
delete_option('s7n_tag_display_show_in_pages');
delete_site_option('s7n_tag_display_show_in_pages');
delete_option('s7n_tag_display_show_in_cpt');
delete_site_option('s7n_tag_display_show_in_cpt');
delete_option('s7n_tag_display_post_template');
delete_site_option('s7n_tag_display_post_template');
delete_option('s7n_tag_display_page_template');
delete_site_option('s7n_tag_display_page_template');
delete_option('s7n_tag_display_cpt_template');
delete_site_option('s7n_tag_display_cpt_template');
delete_option('s7n_tag_display_custom_taxonomies');
delete_site_option('s7n_tag_display_custom_taxonomies');

