-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pixrem_last_backup', 'pixrem_delete_log', 'pixrem_deleted_logs', 'sidebars_widgets', 'wpseo_social', 'pixrem_scan_progress', 'pixrem_whitelist_ids', 'pixrem_whitelist_paths', 'pixrem_used_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_image_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_image_gallery');

