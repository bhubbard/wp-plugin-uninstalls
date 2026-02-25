-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsl_settings_Authentiq_app_id', 'wsl_settings_Authentiq_app_secret', 'woocommerce_enable_myaccount_registration');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%authentiq_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%authentiq_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%authentiq_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%authentiq_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%authentiq_obj';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%authentiq_obj';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%authentiq_obj';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%authentiq_obj';

