-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wsc_skills', 'wen_skill_charts_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wsc_skills', 'wen_skill_charts_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wsc_skills', 'wen_skill_charts_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wsc_skills', 'wen_skill_charts_settings');

