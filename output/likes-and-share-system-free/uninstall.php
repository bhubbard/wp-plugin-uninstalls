<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lass_icons_uses');
delete_site_option('lass_icons_uses');
delete_option('lass_like_liked');
delete_site_option('lass_like_liked');
delete_option('lass_fa_icons');
delete_site_option('lass_fa_icons');
delete_option('lass_img_icons');
delete_site_option('lass_img_icons');
delete_option('lass_like_liked_img');
delete_site_option('lass_like_liked_img');
delete_option('lass_social_sharing_network');
delete_site_option('lass_social_sharing_network');
delete_option('lass_fa_colors');
delete_site_option('lass_fa_colors');
delete_option('lass_fa_colors_hover');
delete_site_option('lass_fa_colors_hover');
delete_option('lass_selected_post_types');
delete_site_option('lass_selected_post_types');
delete_option('lass_position');
delete_site_option('lass_position');
delete_option('lass_align');
delete_site_option('lass_align');
delete_option('lass_font_size');
delete_site_option('lass_font_size');
delete_option('lass_custom_style');
delete_site_option('lass_custom_style');
delete_option('lass_show_on_single');
delete_site_option('lass_show_on_single');
delete_option('lass_show_on_archive');
delete_site_option('lass_show_on_archive');
delete_option('lass_show_on_exclude_home');
delete_site_option('lass_show_on_exclude_home');
delete_option('lass_custom_img_width');
delete_site_option('lass_custom_img_width');
delete_option('lass_custom_img_height');
delete_site_option('lass_custom_img_height');
delete_option('lass_woo_position');
delete_site_option('lass_woo_position');
delete_option('lass_woo_archive');
delete_site_option('lass_woo_archive');
delete_option('lass_woo_archive_position');
delete_site_option('lass_woo_archive_position');
delete_option('lass_social_sharing_network_exclude');
delete_site_option('lass_social_sharing_network_exclude');
delete_option('lass_first_time_activation');
delete_site_option('lass_first_time_activation');

