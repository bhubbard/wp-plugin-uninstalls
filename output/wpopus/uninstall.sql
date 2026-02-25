-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpopus_recent_demo_url', 'wpopus_preload_enable', 'wpopus_preload_image', 'wpopus_preload_bg_color', 'wpopus_preload_image_width', 'wpopus_backtotop_enable', 'wpopus_backtotop_image', 'wpopus_backtotop_image_width', 'wpopus_backtotop_padding', 'wpopus_backtotop_bg_color', 'wpopus_backtotop_border', 'wpopus_backtotop_border_radius');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id');

