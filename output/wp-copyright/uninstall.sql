-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zb_wp_copyright_options', 'zb_wpc_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('copyright', 'released');
DELETE FROM wp_usermeta WHERE meta_key IN ('copyright', 'released');
DELETE FROM wp_termmeta WHERE meta_key IN ('copyright', 'released');
DELETE FROM wp_commentmeta WHERE meta_key IN ('copyright', 'released');

