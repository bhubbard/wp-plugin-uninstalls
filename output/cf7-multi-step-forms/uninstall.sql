-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7wpms', '_cf7wpms_enable', '_cf7wpms_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7wpms', '_cf7wpms_enable', '_cf7wpms_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7wpms', '_cf7wpms_enable', '_cf7wpms_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7wpms', '_cf7wpms_enable', '_cf7wpms_settings');

