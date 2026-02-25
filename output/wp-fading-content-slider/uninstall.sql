-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sort', 'order', 'timeout', 'fading_slider_width', 'fading_slider_height', 'fading_slider_bg', 'fading_slider_border', 'text_width', 'text_color', 'img_width', 'img_height', 'limit', 'points', 'limit_posts', 'auto_switch');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fading_slider');
DELETE FROM wp_usermeta WHERE meta_key IN ('fading_slider');
DELETE FROM wp_termmeta WHERE meta_key IN ('fading_slider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fading_slider');

