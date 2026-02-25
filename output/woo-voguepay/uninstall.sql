-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vpwoo_extra_charge', 'vpwoo_extra_charge_title', 'vpwoo_extra_charge_type', 'vpwoo_extra_charge_amount', 'vpwoo_extra_charge_percentage', 'vpwoo_extra_charge_threshold', 'vpwoo_extra_charge_maximum', 'woocommerce_currency', 'woocommerce_woo-voguepay-plugin_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('transaction_id', 'message');
DELETE FROM wp_usermeta WHERE meta_key IN ('transaction_id', 'message');
DELETE FROM wp_termmeta WHERE meta_key IN ('transaction_id', 'message');
DELETE FROM wp_commentmeta WHERE meta_key IN ('transaction_id', 'message');

