-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%portal_url';
DELETE FROM wp_options WHERE option_name LIKE '%api_key';
DELETE FROM wp_options WHERE option_name LIKE '%user_token';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%scans_temp_save';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%scans_temp_save';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%scans_temp_save';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%scans_temp_save';

