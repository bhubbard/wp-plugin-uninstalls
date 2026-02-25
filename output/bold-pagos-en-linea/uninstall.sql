-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_logo', 'woocommerce_manage_stock', 'woocommerce_hold_stock_minutes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_test_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_test_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_test_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_test_order');

