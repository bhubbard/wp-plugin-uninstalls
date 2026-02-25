-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shiftnav_admin_notices', 'shiftnav_pro_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_uber_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('_uber_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('_uber_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_uber_options');

