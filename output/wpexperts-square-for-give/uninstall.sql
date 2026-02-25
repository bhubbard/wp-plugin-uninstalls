-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('give_settings', 'fs_accounts', 'give_form_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gs_live_token_details', 'gs_live_locations', 'square_token', 'square_appid', 'square_locationid', 'square_btn_auth', 'square_refresh_token', 'square_token_expires_at', 'oauth_preferences', 'square_mode', 'square_test_token', 'square_test_appid', 'square_test_locationid', 'square_billing_details');
DELETE FROM wp_usermeta WHERE meta_key IN ('gs_live_token_details', 'gs_live_locations', 'square_token', 'square_appid', 'square_locationid', 'square_btn_auth', 'square_refresh_token', 'square_token_expires_at', 'oauth_preferences', 'square_mode', 'square_test_token', 'square_test_appid', 'square_test_locationid', 'square_billing_details');
DELETE FROM wp_termmeta WHERE meta_key IN ('gs_live_token_details', 'gs_live_locations', 'square_token', 'square_appid', 'square_locationid', 'square_btn_auth', 'square_refresh_token', 'square_token_expires_at', 'oauth_preferences', 'square_mode', 'square_test_token', 'square_test_appid', 'square_test_locationid', 'square_billing_details');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gs_live_token_details', 'gs_live_locations', 'square_token', 'square_appid', 'square_locationid', 'square_btn_auth', 'square_refresh_token', 'square_token_expires_at', 'oauth_preferences', 'square_mode', 'square_test_token', 'square_test_appid', 'square_test_locationid', 'square_billing_details');

