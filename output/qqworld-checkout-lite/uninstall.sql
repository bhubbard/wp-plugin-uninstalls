-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qqworld-checkout-payments', 'woocommerce_currency', 'icl_enable_multi_currency', 'woocommerce_calc_shipping');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_transaction_id', 'Wepay Out Trade No.');
DELETE FROM wp_usermeta WHERE meta_key IN ('_transaction_id', 'Wepay Out Trade No.');
DELETE FROM wp_termmeta WHERE meta_key IN ('_transaction_id', 'Wepay Out Trade No.');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_transaction_id', 'Wepay Out Trade No.');

