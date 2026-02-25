-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simple_io_image_optimized_quality', 'simple_io_original_image_path');
DELETE FROM wp_usermeta WHERE meta_key IN ('simple_io_image_optimized_quality', 'simple_io_original_image_path');
DELETE FROM wp_termmeta WHERE meta_key IN ('simple_io_image_optimized_quality', 'simple_io_original_image_path');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simple_io_image_optimized_quality', 'simple_io_original_image_path');

