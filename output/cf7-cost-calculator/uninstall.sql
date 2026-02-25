-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7wpms_enable', '_cf7wpms');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7wpms_enable', '_cf7wpms');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7wpms_enable', '_cf7wpms');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7wpms_enable', '_cf7wpms');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_cf7cc_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_cf7cc_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_cf7cc_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_cf7cc_%';

