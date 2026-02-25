-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_license_deed', '_license_image', '_license_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_license_deed', '_license_image', '_license_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_license_deed', '_license_image', '_license_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_license_deed', '_license_image', '_license_name');

