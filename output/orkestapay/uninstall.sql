-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_orkesta_settings', 'woocommerce_orkestapay_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_orkestapay_order_id', '_orkestapay_payment_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_orkestapay_order_id', '_orkestapay_payment_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_orkestapay_order_id', '_orkestapay_payment_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_orkestapay_order_id', '_orkestapay_payment_id');

