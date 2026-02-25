-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'magic_im_deferred_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hash', '_product_attributes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hash', '_product_attributes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hash', '_product_attributes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hash', '_product_attributes');

