-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_scripts';
DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped';
DELETE FROM wp_options WHERE option_name LIKE '%-registered';
DELETE FROM wp_options WHERE option_name LIKE '%-was-registered';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_scripts_custom';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_scripts_custom';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_scripts_custom';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_scripts_custom';

