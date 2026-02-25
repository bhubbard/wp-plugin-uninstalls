<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_paging_background_color_transparent');
delete_site_option('post_paging_background_color_transparent');
delete_option('post_paging_background_color');
delete_site_option('post_paging_background_color');
delete_option('post_paging_use_image');
delete_site_option('post_paging_use_image');
delete_option('post_paging_show_title');
delete_site_option('post_paging_show_title');
delete_option('post_paging_prev_post_text');
delete_site_option('post_paging_prev_post_text');
delete_option('post_paging_next_post_text');
delete_site_option('post_paging_next_post_text');
delete_option('post_paging_images_width');
delete_site_option('post_paging_images_width');
delete_option('post_paging_prev_post_image');
delete_site_option('post_paging_prev_post_image');
delete_option('post_paging_next_post_image');
delete_site_option('post_paging_next_post_image');
delete_option('post_paging_position');
delete_site_option('post_paging_position');
delete_option('post_paging_hover_color');
delete_site_option('post_paging_hover_color');
delete_option('post_paging_text_decoration');
delete_site_option('post_paging_text_decoration');
delete_option('post_paging_text_color');
delete_site_option('post_paging_text_color');
delete_option('post_paging_font_family');
delete_site_option('post_paging_font_family');
delete_option('post_paging_font_size');
delete_site_option('post_paging_font_size');

