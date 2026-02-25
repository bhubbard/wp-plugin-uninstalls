-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('socialgl_logo_id', 'socialgl_cover_image_id', 'socialgl_description', 'socialgl_items_per_page', 'socialgl_mode', 'socialgl_responsive', 'socialgl_seo_title', 'socialgl_seo_description', 'socialgl_social_links', 'socialgl_social_icons', 'socialgl_dark_logo_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('square_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('square_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('square_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('square_image_id');

