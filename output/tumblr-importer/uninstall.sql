-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_permalink';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tumblr_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tumblr_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tumblr_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tumblr_%';

