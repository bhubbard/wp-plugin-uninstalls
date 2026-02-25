-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('syncee_access_token_supplier', 'syncee_user_token_supplier', 'data_to_syncee_installer_supplier', 'woocommerce_currency', 'woocommerce_weight_unit');

