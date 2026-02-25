-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_geidea_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_paid_date', '_order_stock_reduced');
DELETE FROM wp_usermeta WHERE meta_key IN ('_paid_date', '_order_stock_reduced');
DELETE FROM wp_termmeta WHERE meta_key IN ('_paid_date', '_order_stock_reduced');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_paid_date', '_order_stock_reduced');

