-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('add-watermark-default-active', 'add-watermark-exclude', 'add-watermark-image', 'add-watermark-size', 'add-watermark-horizontal-pos-from', 'add-watermark-vertical-pos-from');
DELETE FROM wp_options WHERE option_name LIKE 'add-watermark-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('add-watermark');
DELETE FROM wp_usermeta WHERE meta_key IN ('add-watermark');
DELETE FROM wp_termmeta WHERE meta_key IN ('add-watermark');
DELETE FROM wp_commentmeta WHERE meta_key IN ('add-watermark');

