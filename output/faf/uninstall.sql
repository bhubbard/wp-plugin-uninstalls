-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faf_advanced_filters_options');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('faf_process_image', 'faf_featured_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('faf_process_image', 'faf_featured_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('faf_process_image', 'faf_featured_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('faf_process_image', 'faf_featured_image');

