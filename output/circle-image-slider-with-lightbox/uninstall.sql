-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('circle_thumbnail_slider_plus_lightbox_settings', 'circle_image_carousel');

