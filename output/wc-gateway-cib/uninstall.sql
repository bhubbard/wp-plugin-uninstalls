-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_custom_orders_table_enabled', 'woocommerce_cib_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method', '_transaction_start', '_transaction_cib', '_transaction_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method', '_transaction_start', '_transaction_cib', '_transaction_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method', '_transaction_start', '_transaction_cib', '_transaction_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method', '_transaction_start', '_transaction_cib', '_transaction_id');

