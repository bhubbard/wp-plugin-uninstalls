-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_swiper_settings', 'wdevs_gallery_swiper_theme_color', 'wdevs_gallery_swiper_scrollbar', 'wdevs_gallery_swiper_pagination', 'wdevs_gallery_swiper_navigation', 'wdevs_gallery_swiper_breakpoint', 'wdevs_gallery_swiper_hover_enabled', 'wdevs_gallery_swiper_variation_images');

