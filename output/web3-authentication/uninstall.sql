-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mo_web3_new_registration', 'mo_web3_verify_customer', 'mo_web3_registration_status', 'mo_web3_host_name', 'mo_web3_admin_email', 'mo_web3_admin_phone', 'mo_web3_admin_customer_key', 'mo_web3_admin_api_key', 'mo_web3_customer_token', 'mo_web3_new_customer', 'mo_web3_message', 'mo_web3_display_login_button', 'mo_web3_nft_settings', 'mo_web3_button_custom_text', 'mo_web3_display_multiple_button', 'mo_web3_plugin_version', 'mo_web3_demosite_trial_info');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wallet_address');
DELETE FROM wp_usermeta WHERE meta_key IN ('wallet_address');
DELETE FROM wp_termmeta WHERE meta_key IN ('wallet_address');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wallet_address');

