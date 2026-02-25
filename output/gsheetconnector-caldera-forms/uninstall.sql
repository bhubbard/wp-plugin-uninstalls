-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caldera_google_sheet_info', 'cf_gs_access_code', 'cf_gs_verify', 'cf_gs_token', 'active_sitewide_plugins', 'is_new_client_secret_calderagsc', 'caldera_email_account');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('caldera_gs_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('caldera_gs_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('caldera_gs_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('caldera_gs_settings');

