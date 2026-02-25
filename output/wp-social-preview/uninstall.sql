-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wp_social_preview_deactivated_notice_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%description';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%description';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%image';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%image';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%image';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%twitter_username';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%twitter_username';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%twitter_username';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%twitter_username';

