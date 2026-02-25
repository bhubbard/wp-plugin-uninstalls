-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_payment_gateways_by_user_roles_plugin_enabled', 'alg_wc_payment_gateways_by_user_roles_check_roles', 'active_sitewide_plugins', 'alg_wc_payment_gateways_by_user_roles_version');
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_gateway_roles_in_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_gateway_roles_ex_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

