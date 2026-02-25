-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_last_checked';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_pb_settings_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_pb_settings_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_pb_settings_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_pb_settings_errors_%';

