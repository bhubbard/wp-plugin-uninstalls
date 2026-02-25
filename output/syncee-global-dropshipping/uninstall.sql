-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('syncee_access_token', 'syncee_user_token', 'data_to_syncee_installer', 'woocommerce_currency', 'woocommerce_weight_unit');

