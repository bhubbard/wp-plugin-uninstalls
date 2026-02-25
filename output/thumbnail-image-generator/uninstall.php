<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tgen_bg_colors');
delete_site_option('tgen_bg_colors');
delete_option('tgen_width');
delete_site_option('tgen_width');
delete_option('tgen_height');
delete_site_option('tgen_height');
delete_option('tgen_title_font_size');
delete_site_option('tgen_title_font_size');
delete_option('tgen_is_overlay_image');
delete_site_option('tgen_is_overlay_image');
delete_option('tgen_overlay_position');
delete_site_option('tgen_overlay_position');
delete_option('tgen_overlay_images');
delete_site_option('tgen_overlay_images');
delete_option('tgen_preview_image_url');
delete_site_option('tgen_preview_image_url');
delete_option('tgen_settings');
delete_site_option('tgen_settings');
delete_option('tgen_version');
delete_site_option('tgen_version');
delete_option('tgen_flash_notices');
delete_site_option('tgen_flash_notices');

