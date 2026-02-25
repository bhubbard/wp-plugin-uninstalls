-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_debitsuccess_settings', 'woocommerce_force_ssl_checkout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_vault_ids', 'payment_method_number', 'billing_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_vault_ids', 'payment_method_number', 'billing_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_vault_ids', 'payment_method_number', 'billing_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_vault_ids', 'payment_method_number', 'billing_id');

