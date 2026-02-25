-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_sepay_settings', 'wc_sepay_webhook_id', 'wc_sepay_last_connected_at', 'wc_sepay_access_token', 'wc_sepay_refresh_token', 'wc_sepay_token_expires', 'wc_sepay_webhook_api_key', 'wc_sepay_oauth_state', 'wc_sepay_rate_limited', 'wc_sepay_refresh_failure', 'wc_sepay_oauth_url', 'wc_sepay_oauth_rate_limited', 'wc_sepay_bank_accounts', 'wc_sepay_company', 'wc_sepay_user_info', 'wc_sepay_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'wc_sepay_bank_account_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_sepay_webhook_%';

