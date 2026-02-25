-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpawg_image_popup_color', 'wpawg_navigation_color', 'wpawg_image_popup', 'wpawg_large_image_width', 'wpawg_large_image_height', 'wpawg_large_hardcrop', 'wpawg_thumbnail_image_width', 'wpawg_thumbnail_image_height', 'wpawg_thumbnail_hardcrop', 'wpawg_image_zoom', 'wpawg_thumbnails', 'wpawg_navigation', 'wpawg_autoplay', 'wpawg_autoplay_speed', 'wpawg_centermode', 'wpawg_adaptive_height', 'wpawg_rtl');

