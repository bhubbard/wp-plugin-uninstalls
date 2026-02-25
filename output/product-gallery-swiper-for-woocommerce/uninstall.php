<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_swiper_settings');
delete_site_option('woo_swiper_settings');
delete_option('wdevs_gallery_swiper_theme_color');
delete_site_option('wdevs_gallery_swiper_theme_color');
delete_option('wdevs_gallery_swiper_scrollbar');
delete_site_option('wdevs_gallery_swiper_scrollbar');
delete_option('wdevs_gallery_swiper_pagination');
delete_site_option('wdevs_gallery_swiper_pagination');
delete_option('wdevs_gallery_swiper_navigation');
delete_site_option('wdevs_gallery_swiper_navigation');
delete_option('wdevs_gallery_swiper_breakpoint');
delete_site_option('wdevs_gallery_swiper_breakpoint');
delete_option('wdevs_gallery_swiper_hover_enabled');
delete_site_option('wdevs_gallery_swiper_hover_enabled');
delete_option('wdevs_gallery_swiper_variation_images');
delete_site_option('wdevs_gallery_swiper_variation_images');

