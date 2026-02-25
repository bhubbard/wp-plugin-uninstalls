-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsl_login_enable', 'wsl_plugin_activated', 'wsl_installation', 'wsl_installation_token', 'wsl_webshoplogin_account_exists', 'wsl_login_api_key', 'wsl_login_api_secret', 'wsl_login_state_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wsl_user_version', '_wsl_user_id', '_wsl_customer_version', '_wsl_billing_address_version', '_wsl_shipping_address_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wsl_user_version', '_wsl_user_id', '_wsl_customer_version', '_wsl_billing_address_version', '_wsl_shipping_address_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wsl_user_version', '_wsl_user_id', '_wsl_customer_version', '_wsl_billing_address_version', '_wsl_shipping_address_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wsl_user_version', '_wsl_user_id', '_wsl_customer_version', '_wsl_billing_address_version', '_wsl_shipping_address_version');

