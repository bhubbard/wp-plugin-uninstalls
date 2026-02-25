-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpseo_edit_title', '_aioseop_title', '_wpseo_edit_description', '_aioseop_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpseo_edit_title', '_aioseop_title', '_wpseo_edit_description', '_aioseop_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpseo_edit_title', '_aioseop_title', '_wpseo_edit_description', '_aioseop_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpseo_edit_title', '_aioseop_title', '_wpseo_edit_description', '_aioseop_description');

