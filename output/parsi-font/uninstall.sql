-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dash_font_settings', 'site_font_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mwfc_pro_version_dismissed', 'mwfc_pro_version_2_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('mwfc_pro_version_dismissed', 'mwfc_pro_version_2_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('mwfc_pro_version_dismissed', 'mwfc_pro_version_2_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mwfc_pro_version_dismissed', 'mwfc_pro_version_2_dismissed');

