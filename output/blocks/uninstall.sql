-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blocks', 'update_plugins', 'blocks_dropdown_list');
DELETE FROM wp_options WHERE option_name LIKE 'blocks_%';
DELETE FROM wp_options WHERE option_name LIKE '%_logged_in';
DELETE FROM wp_options WHERE option_name LIKE '%_logged_out';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('_locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('_locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_locale');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

