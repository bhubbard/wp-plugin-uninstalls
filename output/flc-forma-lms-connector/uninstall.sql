-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flc_version', 'flc_address', 'flc_api_key', 'flc_api_secret');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%sso_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('flc_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('flc_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('flc_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('flc_id', 'first_name', 'last_name');

