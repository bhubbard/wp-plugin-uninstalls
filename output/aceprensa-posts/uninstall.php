<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aceprensa_site_url');
delete_site_option('aceprensa_site_url');
delete_option('aceprensa_cache_seconds');
delete_site_option('aceprensa_cache_seconds');
delete_option('aceprensa_num_posts');
delete_site_option('aceprensa_num_posts');
delete_option('aceprensa_image_size');
delete_site_option('aceprensa_image_size');
delete_option('aceprensa_un_click');
delete_site_option('aceprensa_un_click');
delete_option('aceprensa_username');
delete_site_option('aceprensa_username');
delete_option('aceprensa_selected_categories');
delete_site_option('aceprensa_selected_categories');
delete_option('aceprensa_post_types');
delete_site_option('aceprensa_post_types');
delete_option('aceprensa_layout');
delete_site_option('aceprensa_layout');
delete_option('aceprensa_cols_m');
delete_site_option('aceprensa_cols_m');
delete_option('aceprensa_cols_t');
delete_site_option('aceprensa_cols_t');
delete_option('aceprensa_cols_d');
delete_site_option('aceprensa_cols_d');
delete_option('aceprensa_show_image');
delete_site_option('aceprensa_show_image');
delete_option('aceprensa_image_position');
delete_site_option('aceprensa_image_position');
delete_option('aceprensa_image_orientation');
delete_site_option('aceprensa_image_orientation');
delete_option('aceprensa_aspect_ratio');
delete_site_option('aceprensa_aspect_ratio');
delete_option('aceprensa_image_width');
delete_site_option('aceprensa_image_width');
delete_option('aceprensa_card_gap');
delete_site_option('aceprensa_card_gap');
delete_option('aceprensa_show_author');
delete_site_option('aceprensa_show_author');
delete_option('aceprensa_upper_author');
delete_site_option('aceprensa_upper_author');
delete_option('aceprensa_show_date');
delete_site_option('aceprensa_show_date');
delete_option('aceprensa_date_format');
delete_site_option('aceprensa_date_format');
delete_option('aceprensa_date_upper');
delete_site_option('aceprensa_date_upper');
delete_option('aceprensa_excerpt_words');
delete_site_option('aceprensa_excerpt_words');
delete_option('aceprensa_excerpt_mode');
delete_site_option('aceprensa_excerpt_mode');
delete_option('aceprensa_excerpt_lines');
delete_site_option('aceprensa_excerpt_lines');
delete_option('aceprensa_title_clamp');
delete_site_option('aceprensa_title_clamp');
delete_option('aceprensa_title_lines');
delete_site_option('aceprensa_title_lines');

