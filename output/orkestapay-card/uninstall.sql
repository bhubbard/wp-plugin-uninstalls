-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_orkesta_settings', 'woocommerce_orkestapay-card_settings', 'woocommerce_orkestapay_card_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('orkestapay_customer_id', '_yith_affiliate_discount', '_orkestapay_order_id', '_orkestapay_payment_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('orkestapay_customer_id', '_yith_affiliate_discount', '_orkestapay_order_id', '_orkestapay_payment_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('orkestapay_customer_id', '_yith_affiliate_discount', '_orkestapay_order_id', '_orkestapay_payment_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('orkestapay_customer_id', '_yith_affiliate_discount', '_orkestapay_order_id', '_orkestapay_payment_id', 'first_name', 'last_name');

