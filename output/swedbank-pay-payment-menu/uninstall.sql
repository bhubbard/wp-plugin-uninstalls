-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payex_checkout_settings', 'woocommerce_tax_display_shop');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'krokedil_support_%';
DELETE FROM wp_options WHERE option_name LIKE 'sb_refund_prevent_online_refund_%';
DELETE FROM wp_options WHERE option_name LIKE 'sb_refund_parameters_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payex_customer_uuid');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payex_customer_uuid');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payex_customer_uuid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payex_customer_uuid');

