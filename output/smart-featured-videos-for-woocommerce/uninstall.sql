-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clicky_fv_player_type', 'clicky_fv_player_color', 'clicky_fv_overlay_icon');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_featured_video_url', '_product_featured_video_type', '_product_featured_video_thumbnail', '_product_featured_video_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_featured_video_url', '_product_featured_video_type', '_product_featured_video_thumbnail', '_product_featured_video_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_featured_video_url', '_product_featured_video_type', '_product_featured_video_thumbnail', '_product_featured_video_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_featured_video_url', '_product_featured_video_type', '_product_featured_video_thumbnail', '_product_featured_video_enabled');

