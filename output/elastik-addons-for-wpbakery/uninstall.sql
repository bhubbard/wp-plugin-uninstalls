-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('azh-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_brand-color', '_accent-1-color', '_accent-2-color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_brand-color', '_accent-1-color', '_accent-2-color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_brand-color', '_accent-1-color', '_accent-2-color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_brand-color', '_accent-1-color', '_accent-2-color');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

