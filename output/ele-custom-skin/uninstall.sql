-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', 'ele_custom_skin_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', 'ele_custom_skin_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', 'ele_custom_skin_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', 'ele_custom_skin_notice_dismissed');

