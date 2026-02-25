-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_wc_valorpay_settings', 'woocommerce_valorpos_settings', 'woocommerce_store_postcode', 'woocommerce_default_country', 'valorpay_payment_failed_tracker', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vault_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vault_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vault_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vault_customer_id');

