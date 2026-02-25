-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_currency', 'woocommerce_default_country', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'easyship_lg_blocked_activation', 'easyship_plugin__is_upgrading');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'billing_phone');

