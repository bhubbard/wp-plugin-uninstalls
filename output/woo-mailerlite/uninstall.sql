-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'active_sitewide_plugins', 'woo_ml_key', 'woo_ml_wizard_setup', 'woocommerce_mailerlite_settings', 'woo_ml_account_name', 'account_id', 'account_subdomain', 'woo_ml_shop_id', 'woo_ml_last_synced_guest_id', 'woo_mailerlite', 'woocommerce_version', 'mailerlite_custom_fields');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_ml_product_ignored', '_woo_ml_product_tracked', '_woo_ml_category_tracked');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_ml_product_ignored', '_woo_ml_product_tracked', '_woo_ml_category_tracked');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_ml_product_ignored', '_woo_ml_product_tracked', '_woo_ml_category_tracked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_ml_product_ignored', '_woo_ml_product_tracked', '_woo_ml_category_tracked');

