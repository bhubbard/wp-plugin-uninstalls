-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbio_lite_last_media_modified', 'wbio_lite_total_optimized', 'wbio_lite_bytes_saved', 'wbio_lite_activated_date', 'wbio_lite_unused_images_cache', 'wbio_lite_unused_images_cache_time');
DELETE FROM wp_options WHERE option_name LIKE '%_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wbio_lite_backup_file', '_wbio_lite_backed_up', '_wbio_lite_optimized', '_wbio_lite_original_size', '_wbio_lite_optimized_size', '_wbio_lite_format', '_wbio_lite_quality', '_wbio_lite_optimized_file', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wbio_lite_backup_file', '_wbio_lite_backed_up', '_wbio_lite_optimized', '_wbio_lite_original_size', '_wbio_lite_optimized_size', '_wbio_lite_format', '_wbio_lite_quality', '_wbio_lite_optimized_file', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wbio_lite_backup_file', '_wbio_lite_backed_up', '_wbio_lite_optimized', '_wbio_lite_original_size', '_wbio_lite_optimized_size', '_wbio_lite_format', '_wbio_lite_quality', '_wbio_lite_optimized_file', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wbio_lite_backup_file', '_wbio_lite_backed_up', '_wbio_lite_optimized', '_wbio_lite_original_size', '_wbio_lite_optimized_size', '_wbio_lite_format', '_wbio_lite_quality', '_wbio_lite_optimized_file', '_wp_attached_file');

