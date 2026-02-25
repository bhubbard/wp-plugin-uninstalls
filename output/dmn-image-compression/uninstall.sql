-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dmnic_enable_debug_log', 'dmnic_enable_cron', 'dmnic_max_width', 'dmnic_min_size_kb', 'dmnic_enable_aggressive_compression', 'dmnic_quality', 'dmnic_image_compression_counts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dmnic_image_compressed', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dmnic_image_compressed', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dmnic_image_compressed', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dmnic_image_compressed', '_wp_attached_file');

