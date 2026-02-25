-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('twt_setting_countries', 'twt_setting_number', 'twt_setting_welcome', 'twt_setting_account_sid', 'twt_setting_auth_token');

