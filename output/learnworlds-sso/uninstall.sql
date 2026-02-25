-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('learnworlds_sso_use_woocommerce_account_urls', 'learnworlds_sso_access_token', 'learnworlds_sso_access_token_expires_on', 'learnworlds_sso_client_id', 'learnworlds_sso_client_secret', 'learnworlds_sso_api_server_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('learnworlds_user_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('learnworlds_user_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('learnworlds_user_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('learnworlds_user_id');

