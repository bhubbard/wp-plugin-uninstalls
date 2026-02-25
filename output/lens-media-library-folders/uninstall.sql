-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lens_pro_license_snapshot', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'lens_quick_switch_all_folders_paths_v%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lens_navigation_mode', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('lens_navigation_mode', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('lens_navigation_mode', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lens_navigation_mode', '_wp_attachment_image_alt');

