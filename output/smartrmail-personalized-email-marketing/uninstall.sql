-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swi_cart_migration_1', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_default_country', 'woocommerce_store_postcode', 'woocommerce_currency', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woocommerce_persistent_cart_1', 'first_name', 'last_name', 'swi_abandoned');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woocommerce_persistent_cart_1', 'first_name', 'last_name', 'swi_abandoned');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woocommerce_persistent_cart_1', 'first_name', 'last_name', 'swi_abandoned');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woocommerce_persistent_cart_1', 'first_name', 'last_name', 'swi_abandoned');

