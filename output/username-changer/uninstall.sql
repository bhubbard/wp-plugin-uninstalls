-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';
DELETE FROM wp_options WHERE option_name LIKE '%_license_error';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_usermeta WHERE meta_key IN ('nickname');
DELETE FROM wp_termmeta WHERE meta_key IN ('nickname');
DELETE FROM wp_commentmeta WHERE meta_key IN ('nickname');

