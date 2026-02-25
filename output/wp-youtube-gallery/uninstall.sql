-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpyg_min_h', 'wpyg_lightbox', 'wpyg_iframe_w', 'wpyg_desc', 'wpyg_title', 'wpyg_content_limit', 'wpyg_per_row_posts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpyg_video-id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpyg_video-id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpyg_video-id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpyg_video-id');

