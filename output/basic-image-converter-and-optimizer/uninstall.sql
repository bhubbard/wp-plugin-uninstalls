-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basiimco_webp_quality', 'basiimco_avif_quality', 'basiimco_enable_webp', 'basiimco_enable_avif', 'basiimco_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_basiimco_optimized_format', '_basiimco_original_size');
DELETE FROM wp_usermeta WHERE meta_key IN ('_basiimco_optimized_format', '_basiimco_original_size');
DELETE FROM wp_termmeta WHERE meta_key IN ('_basiimco_optimized_format', '_basiimco_original_size');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_basiimco_optimized_format', '_basiimco_original_size');

