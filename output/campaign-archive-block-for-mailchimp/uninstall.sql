-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cabfm_api_key', 'cabfm_server_prefix', 'cabfm_api_credentials_validation_result', 'cabfm_api_credentials_validation_message', 'cabfm_api_credentials_account_name', 'mc_api_key', 'mailchimp-woocommerce');

