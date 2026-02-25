-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flying_images_cdn_exclude_keywords', 'flying_images_lazymethod', 'flying_images_exclude_keywords', 'flying_images_enable_cdn', 'flying_images_enable_lazyloading', 'flying_images_enable_responsive_images', 'flying_images_enable_compression', 'flying_images_quality', 'FLYING_IMAGES_VERSION', 'flying_images_margin', 'active_sitewide_plugins');

