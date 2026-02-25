-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pssg_saved_data');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date';
DELETE FROM wp_options WHERE option_name LIKE '%_right_now';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_type');

