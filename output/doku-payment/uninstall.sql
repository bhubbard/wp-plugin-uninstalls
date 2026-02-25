-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_doku_gateway_settings', 'doku_db_version', 'main_settings_jokul_pg');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('checkoutParams', 'checkoutConfig', 'checkoutUrl', 'jokul_cc_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('checkoutParams', 'checkoutConfig', 'checkoutUrl', 'jokul_cc_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('checkoutParams', 'checkoutConfig', 'checkoutUrl', 'jokul_cc_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('checkoutParams', 'checkoutConfig', 'checkoutUrl', 'jokul_cc_order_id');

