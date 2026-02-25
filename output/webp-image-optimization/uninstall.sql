-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webp_image_optimization_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_original_file_size', '_webp_file_size', '_wp_attached_file', '_avif_file_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_original_file_size', '_webp_file_size', '_wp_attached_file', '_avif_file_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_original_file_size', '_webp_file_size', '_wp_attached_file', '_avif_file_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_original_file_size', '_webp_file_size', '_wp_attached_file', '_avif_file_size');

