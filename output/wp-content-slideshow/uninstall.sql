-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('content_width', 'content_bg', 'content_height', 'content_img_width', 'content_nav_width', 'content_nav_height', 'content_nav_color', 'content_nav_bg', 'content_nav_active_bg', 'content_nav_active_color', 'content_sort', 'content_order');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('content_slider');
DELETE FROM wp_usermeta WHERE meta_key IN ('content_slider');
DELETE FROM wp_termmeta WHERE meta_key IN ('content_slider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('content_slider');

