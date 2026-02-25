-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wccal_permalinks', 'wccal_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_url', '_wccal_clickthrough_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_url', '_wccal_clickthrough_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_url', '_wccal_clickthrough_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_url', '_wccal_clickthrough_count');

