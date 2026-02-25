-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('future_post_trigger', 'twitter_published');
DELETE FROM wp_usermeta WHERE meta_key IN ('future_post_trigger', 'twitter_published');
DELETE FROM wp_termmeta WHERE meta_key IN ('future_post_trigger', 'twitter_published');
DELETE FROM wp_commentmeta WHERE meta_key IN ('future_post_trigger', 'twitter_published');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_active';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_active';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_active';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_active';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title';

