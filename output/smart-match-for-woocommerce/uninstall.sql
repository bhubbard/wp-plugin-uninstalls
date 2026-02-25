-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smfwc_settings', 'smfwc_api_key', 'smfwc_privacy_notice_dismissed', 'smfwc_large_taxonomy_notice_dismissed', 'smfwc_category_tree');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smfwc_last_analysis', 'smfwc_large_taxonomy_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smfwc_last_analysis', 'smfwc_large_taxonomy_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smfwc_last_analysis', 'smfwc_large_taxonomy_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smfwc_last_analysis', 'smfwc_large_taxonomy_dismissed');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smfwc_notice_dismissed_%';

