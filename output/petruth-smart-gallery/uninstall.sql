-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('psmg_ai_mode', 'psmg_ai_api_key', 'psmg_gallery_columns', 'psmg_primary_color', 'psmg_show_search', 'psmg_show_titles', 'psmg_show_filter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_psmg_gallery_images', 'psmg_ai_cache');
DELETE FROM wp_usermeta WHERE meta_key IN ('_psmg_gallery_images', 'psmg_ai_cache');
DELETE FROM wp_termmeta WHERE meta_key IN ('_psmg_gallery_images', 'psmg_ai_cache');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_psmg_gallery_images', 'psmg_ai_cache');

