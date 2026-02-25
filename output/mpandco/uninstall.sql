-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Payment_mPandco_accessToken_sandbox', 'Payment_mPandco_accessToken', 'Payment_mPandco_tokenCreateTime_sandbox', 'Payment_mPandco_tokenCreateTime', 'Payment_mPandco_tokenExpiresIn_sandbox', 'Payment_mPandco_tokenExpiresIn', 'Payment_mPandco_tokenType', 'Payment_mPandco_refreshToken_sandbox', 'Payment_mPandco_refreshToken');

