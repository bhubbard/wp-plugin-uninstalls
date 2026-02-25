-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_global_unique_id', 'is_customer_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_global_unique_id', 'is_customer_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_global_unique_id', 'is_customer_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_global_unique_id', 'is_customer_note');

