-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('postfo_options');
DELETE FROM wp_options WHERE option_name LIKE 'postfo_processing_%';
DELETE FROM wp_options WHERE option_name LIKE 'postfo_lock_%';
DELETE FROM wp_options WHERE option_name LIKE 'postfo_forwarded_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('postfo_product');
DELETE FROM wp_usermeta WHERE meta_key IN ('postfo_product');
DELETE FROM wp_termmeta WHERE meta_key IN ('postfo_product');
DELETE FROM wp_commentmeta WHERE meta_key IN ('postfo_product');

