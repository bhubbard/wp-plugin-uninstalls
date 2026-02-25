-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smart_image_optimizer_default_format', 'smart_image_optimizer_default_quality', 'smart_image_optimizer_auto_optimize');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sio_optimized');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sio_optimized');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sio_optimized');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sio_optimized');

