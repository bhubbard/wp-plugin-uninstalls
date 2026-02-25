<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aimg_bg_colors');
delete_site_option('aimg_bg_colors');
delete_option('aimg_width');
delete_site_option('aimg_width');
delete_option('aimg_height');
delete_site_option('aimg_height');
delete_option('aimg_title_font_size');
delete_site_option('aimg_title_font_size');
delete_option('aimg_is_overlay_image');
delete_site_option('aimg_is_overlay_image');
delete_option('aimg_overlay_position');
delete_site_option('aimg_overlay_position');
delete_option('aimg_overlay_images');
delete_site_option('aimg_overlay_images');
delete_option('aimg_preview_image_url');
delete_site_option('aimg_preview_image_url');
delete_option('aimg_settings');
delete_site_option('aimg_settings');
delete_option('aimg_version');
delete_site_option('aimg_version');
delete_option('aimg_flash_notices');
delete_site_option('aimg_flash_notices');

