-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_force_ssl_checkout', 'woocommerce_alt5pay_settings', 'debug_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_vault_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_vault_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_vault_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_vault_ids');

