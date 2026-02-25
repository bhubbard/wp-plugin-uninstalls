-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_share_settings', 'has_easy_ss_pro', 'ess_update_notice_dismissed1', 'ess_pro_notice_dismissed1');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_easy_share_total');
DELETE FROM wp_usermeta WHERE meta_key IN ('_easy_share_total');
DELETE FROM wp_termmeta WHERE meta_key IN ('_easy_share_total');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_easy_share_total');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_easy_share_count_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_easy_share_count_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_easy_share_count_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easy_share_count_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_easy_share_last_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_easy_share_last_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_easy_share_last_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_easy_share_last_%';

