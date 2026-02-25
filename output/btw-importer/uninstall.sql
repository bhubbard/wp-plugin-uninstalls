-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('btw_importer_data', 'btw_importer_status', 'btw_importer_current_file', 'btw_importer_image_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_old_permalink');
DELETE FROM wp_usermeta WHERE meta_key IN ('_old_permalink');
DELETE FROM wp_termmeta WHERE meta_key IN ('_old_permalink');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_old_permalink');

