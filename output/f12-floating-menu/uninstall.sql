-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('f12_floating_menu_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_floating_settings', '_floating_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('_floating_settings', '_floating_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('_floating_settings', '_floating_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_floating_settings', '_floating_links');

